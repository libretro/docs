# RetroArch Run Ahead

Every game has a certain built-in amount of lag, some react on the next displayed frame, some can take 2, 3 or even more frames before an action on the gamepad finally get rendered on screen.  
The Run Ahead feature calculates the frames as fast as possible in the background to "rollback" the action as close as possible to the input command requested.

That feature deals with "internal" game logic lag.  
This means you can still take advantage of other RetroArch lag reduction methods that happens later, such as Hard GPU Sync or Frame Delay.

It's located in **Quickmenu > Latency** (also in Settings > Latency).
 
## How many frames to Run Ahead?

We need to find **the shortest internal input lag** a game can have, it's usually just moving the character:

- Pause emulation (press "P" hotkey on keyboard).
- Press and hold a direction on the controller.
- Advance emulation frame by frame (press "K" hotkey on keyboard) until the character moves.

At best an action will be visible on the next frame, so the frames of lag are **the amount of time you pushed "K" minus 1**.

If you did select an higher number than needed, you will see a stutter/rollback when pushing buttons and possibly various weirdness.
If you selected a lower number, repeating the test above will take more than 1 push on the "K" hotkey to see your character move.
  
## Can I always use Run Ahead?

**Run Ahead relies on save states** so they need to be clean and fast enough.  
If a core doesn't support them, this can not work.  
Using **Second Instance** mode works around some save states limitation, use it if possible.

Calculating several frames in advance means that your machine must be fast enough to run the core at that level of speed.  
**The higher the number of frames you are going to run ahead of emulation, the higher demands it places on your CPU.**
  
## More detailed explanation
Here is a more detailed explanation on runahead by its author Dwedit.

How the Run-Ahead feature currently works:

There are two modes of operation.

- Single-Instance Mode
- Two-Instance Mode

In Single-Instance mode, when it wants to run a frame, instead it does this:

- Disable audio and video, run a frame, Save State
- Run additional frames with audio and video disabled if we want to run ahead more than one frame
- Enable audio and video and run the frame we want to see
- Load State

All save states and load states are done to ram and never reach the disk.

In Two-Instance mode, it does this:

- Primary core does Audio only, then saves state
- Secondary core loads state, runs frames ahead discarding audio and video, then runs a frame with video only.

For performance reasons, it only resyncs the secondary core when input is dirty, otherwise it keeps running additional frames on the secondary core while the input is clean.

Why bother with Two-Instance mode at all? Many of the cores do not leave audio emulation in a clean state after loading state, so you would get buzzing. Using Two-Instance mode makes the primary core not do any load states and avoids that.

In Single-Instance mode, it is possible to improve performance further by running ahead without loading state while input is clean, but I am not currently doing that.
I'd imagine there would be issues if calling the "run a frame" function left you in a state further along than a single frame.

I'm also not doing any speculative inputs at all.
