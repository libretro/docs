# Contribute to the documentation

The docs are written in [Markdown](https://en.wikipedia.org/wiki/Markdown) if you need help with the syntax use [this guide](https://guides.github.com/features/mastering-markdown/). Mkdocs uses some [Markdown extensions](http://www.mkdocs.org/user-guide/writing-your-docs/#markdown-extensions) that you may have to familiarize with.

The documentation source is maintained via [Git](https://en.wikipedia.org/wiki/Git). For more info on how to use git [refer to their help](https://help.github.com/)

In order to propose improvements to a document:

1. [Clone the repo](https://github.com/libretro/docs)
2. Make the changes and update your clone
3. Follow the "Building the docs" section to render the documentation site locally
4. Propose your changes using the button `New Pull Request` [in the docs repo](https://github.com/libretro/docs)

There is a To-Do list for libretro/docs *here* and you can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues).

## Building the docs

1. Make sure you have [Python](https://www.python.org/) and [pip](https://pip.pypa.io) installed
    ```
    python --version
    pip --version
    ```

!!! Note "Building in Windows/msys2"
    If you are using the standard RetroArch msys2 environment, you will need to install python with the command `pacman -S python`. Next you will need to download [the `get-pip.py` script](https://bootstrap.pypa.io/get-pip.py) from the `pip` bootstrap site. Finally, execute the script with the command `python get-pip.py`.

2. Install MkDocs
    ```
    pip install mkdocs
    ```

3. Install MkDocs-Material
    ```
    pip install mkdocs-material
    ```

4. Install PyMdown Extensions
    ```
    pip install pymdown-extensions
    ```
5. Install mkdocs-git-revision-date
    ```
    pip install mkdocs-git-revision-date-plugin
    ```
6. Install mkdocs-macros
    ```
    pip install mkdocs-macros-plugin
    ```

7. Build the site
    ```
    mkdocs build
    ```

8. The documentation will be built to the `site` directory; preview any changes with MkDocs' built-in dev-server before submitting a pull request
    ```
    mkdocs serve
    ```

**References**

  - [Guide to installing mkdocs](https://www.mkdocs.org/#installation)


## Adding a new core

These are the documents that should be added/updated when a new core is added to the libretro ecosystem.

- Add the core to docs/library/ (Follow the latest core template. docs/meta/core-template.md)
- Add the core to mkdocs.yml
- Add the core to docs/meta/core-list.md
- Add the core to docs/meta/see-also.md if it's related to another core in some way
- Add the core to docs/development/licenses.md
- Add the core to docs/guides/softpatching.md if it supports softpatching
- Add the core to docs/guides/retroachievements.md if it supports cheevos
- Add the core to docs/library/bios.md if it needs a BIOS
