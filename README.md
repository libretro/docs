# Libretro Documentation

This is the source for the [libretro documentation](https://docs.libretro.com), powered by [MkDocs](http://www.mkdocs.org/).

[MkDocs documentation](http://www.mkdocs.org/)

[Material for MkDocs documentation](https://squidfunk.github.io/mkdocs-material/)

[Libretro Forums topic](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078)

[To-do list](https://docs.libretro.com/meta/todo/)

![travis](https://www.travis-ci.org/libretro/docs.svg?branch=master)

## Building

1. Make sure you have [Python](https://www.python.org/) and [pip](https://pip.pypa.io) installed
    ```
    python --version
    pip --version
    ```

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

5. Build the site
    ```
    mkdocs build
    ```

6. The documentation will be built to the `site` directory
