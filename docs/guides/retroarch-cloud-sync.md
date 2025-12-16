# RetroArch Cloud Sync

Cloud Sync enables seamless synchronization of configuration and save data to a cloud server, allowing you to keep multiple devices in sync.

## Supported Backends

There are three cloud sync backends available:

| Backend | Platforms | Notes |
|---------|-----------|-------|
| **WebDAV** | All | Requires server URL, username, and password |
| **iCloud** | macOS, iOS, tvOS | Uses CloudKit (Apple's database service) |
| **iCloud Drive** | macOS, iOS | Uses iCloud Drive file storage |

### WebDAV

WebDAV is a standard protocol supported by many cloud providers and self-hosted solutions. You'll need:

- A WebDAV server URL (e.g., `https://webdav.example.com/RetroArch/`)
- Username and password

### iCloud vs iCloud Drive

Both use your Apple iCloud account but work differently:

- **iCloud** uses CloudKit, Apple's database service. Data is stored in a structured database format.
- **iCloud Drive** stores files directly in iCloud Drive storage, similar to how other apps store documents.

!!! note "iCloud Drive files are not visible in Files.app"
    Files synced via iCloud Drive are intentionally hidden from the Files app. This is by design—the sync system uses a manifest file to track file hashes, and direct editing of files would corrupt the sync state. Your data is safely stored in iCloud and syncs between devices, but you should only access it through RetroArch.

## What Gets Synced

Cloud Sync can synchronize the following directories (each can be enabled/disabled individually):

| Directory | Default | Contents |
|-----------|---------|----------|
| **Save Files & States** | On | Game saves (`.srm`) and save states |
| **Configuration** | On | Core configs, core options, shader presets, MAME/FBNeo hiscores |
| **Thumbnails** | Off | Custom thumbnails (use the thumbnail downloader for standard ones) |
| **System Files** | Off | BIOS files, etc. (can be large; use with caution) |

### Excluded Files

The following are automatically excluded from sync:

- `retroarch.cfg` (main configuration file)
- Playlist files (`content_*.lpl`)
- `.DS_Store` files (macOS)

## Configuration

### Initial Setup (First Device)

Start with your primary RetroArch device to establish the initial cloud state.

1. Navigate to **Settings → Saving → Cloud Sync**
2. Configure the following:

| Setting | Description |
|---------|-------------|
| **Enable Cloud Sync** | Turn on to enable syncing |
| **Destructive Cloud Sync** | When OFF, deleted/overwritten files are backed up locally |
| **Cloud Sync Backend** | Select your backend (webdav, icloud, or icloud_drive) |
| **Sync Saves** | Sync save files and save states |
| **Sync Configs** | Sync configuration files |
| **Sync Thumbnails** | Sync thumbnail images |
| **Sync System** | Sync system/BIOS files |

For WebDAV, also configure:

| Setting | Description |
|---------|-------------|
| **Cloud Storage URL** | Your WebDAV server URL (include trailing slash) |
| **Username** | WebDAV username |
| **Password** | WebDAV password |

3. Save the configuration and restart RetroArch
4. The initial sync will begin automatically (watch the status line at the bottom)

### Adding Additional Devices

Configure each additional device with identical settings. Pay special attention to these directory settings—they must match across all devices:

- Sort Saves into Folders by Core Name
- Sort Save States into Folders by Core Name
- Sort Saves into Folders by Content Directory
- Sort Save States into Folders by Content Directory

!!! warning
    If these settings don't match, devices will store files in different locations and sync will fail to merge them correctly.

## How Cloud Sync Works

Cloud Sync uses a three-way merge algorithm with two manifest files:

1. **Server Manifest** - Tracks what's stored in the cloud
2. **Local Manifest** - Tracks what was last synced from this device

When sync runs, RetroArch compares:

- Current local files
- Local manifest (what we last synced)
- Server manifest (what the cloud has)

This allows the system to detect:

- New local files → upload to cloud
- New server files → download to device
- Changed files → determine which version is newer
- Deleted files → propagate deletion (or backup if non-destructive)
- Conflicts → when both local and server changed the same file

### Sync Mode

The **Sync Mode** setting controls when synchronization occurs:

| Mode | Behavior |
|------|----------|
| **Automatic** (default) | Syncs on RetroArch startup and when cores are unloaded (returning to menu) |
| **Manual** | Only syncs when you explicitly trigger it via **Sync Now** |

In **Automatic** mode, sync also runs when RetroArch resumes from the background on iOS.

Use **Manual** mode if you want full control over when sync happens, or if you're on a metered connection and want to minimize data usage.

### Sync Now

The **Sync Now** option (in Settings → Saving → Cloud Sync) manually triggers a sync. This works in both Automatic and Manual modes, allowing you to force a sync at any time.

!!! tip
    Always close the running content (Close Content) and return to RetroArch's main menu before quitting RetroArch. This ensures your latest saves are synced. Quitting RetroArch while content is still running may skip the sync.

### Conflict Resolution

A conflict occurs when the same file is modified on multiple devices before they have a chance to sync. Specifically, a conflict is detected when:

- The server version differs from what was last synced, AND
- The local version also differs from what was last synced

Another conflict scenario is when one device deletes a file while another device modifies it.

**Current behavior:** When a conflict is detected, RetroArch does not overwrite either version. The local file remains unchanged, the server file remains unchanged, and the conflict is logged. The file is temporarily excluded from sync until manually resolved.

**Identifying conflicts:**

- The status line will show "Cloud Sync finished with conflicts"
- The log file will contain entries like: `[CloudSync] Conflicting change of saves/game.srm`

**Resolving conflicts manually:**

1. Enable debug logging and check the log to identify which files are conflicting
2. Decide which version you want to keep (local or server)
3. To keep the **server** version: delete or rename the local file, then let sync run again to download the server version
4. To keep the **local** version: edit the local manifest file (`manifest.local` in your downloads/core assets directory) and update the conflicting file's hash to match the server's hash. On the next sync, RetroArch will see the local file as changed and upload it

!!! tip
    To avoid conflicts, try not to use RetroArch on multiple devices simultaneously. Always let sync complete on one device before starting a session on another.

### Non-Destructive Mode

When **Destructive Cloud Sync** is OFF, files that would be deleted or overwritten are backed up to:

```
[core_assets_directory]/cloud_backups/[path]-YYMMDD-HHMMSS
```

This allows recovery if sync makes unwanted changes.

## Sync Status

Sync progress is displayed in the bottom-left status line. Messages include:

- "Cloud Sync in progress" - Sync is running
- "Cloud Sync finished" - Completed successfully
- "Cloud Sync finished with conflicts" - Completed but conflicts were detected
- "Cloud Sync finished with failures" - Some operations failed
- "Cloud Sync failed" - Could not connect to backend

## Troubleshooting

### Enable Logging

1. Go to **Settings → Logging**
2. Enable **Log to File**
3. Set **Logging Level** to **Debug**

Cloud Sync logs detailed information prefixed with `[CloudSync]`.

### Common Issues

**Sync not starting**

- Verify Cloud Sync is enabled
- Check network connectivity
- For WebDAV: verify URL, username, and password
- For iCloud: ensure you're signed into iCloud on the device

**Files not syncing between devices**

- Ensure directory organization settings match on all devices
- Check that the same sync options (saves, configs, etc.) are enabled
- Wait for sync to complete on one device before starting another

**Conflicts appearing**

- Avoid using multiple devices simultaneously
- Always let sync complete before closing RetroArch
- Check logs to identify which files are conflicting

**iCloud Drive: "Can't see files in Files.app"**

This is intentional. Files are stored in a private app container to protect sync integrity. Your data is syncing correctly even though it's not visible in Files.app.
