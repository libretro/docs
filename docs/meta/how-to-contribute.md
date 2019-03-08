# Contribute to the documentation

The docs are written in [Markdown](https://en.wikipedia.org/wiki/Markdown) if you need help with the syntax use [this guide](https://guides.github.com/features/mastering-markdown/). <br />
Mkdocs uses some [Markdown extensions](http://www.mkdocs.org/user-guide/writing-your-docs/#markdown-extensions) that you may have to familiarize with.

The documentation source is maintained via [Git](https://en.wikipedia.org/wiki/Git)<br />
For novice users that don't know how to use the command line you can use [Github Desktop](https://desktop.github.com/).<br />
For more info on how to use git [refer to their help](https://help.github.com/)

In order to propose improvements to a document:

1. [Clone the repo](https://github.com/libretro/docs) (If you are using [Github Desktop](https://desktop.github.com/), select Clone>Open in Desktop)
2. Make the changes and update your clone
3. Test, [follow the Building section to render the site](https://github.com/libretro/docs/blob/master/README.md#building)
4. Propose your changes using the button "New Pull Request" [in the docs repo](https://github.com/libretro/docs)<br />
make sure that you are comparing **your forks edited branch** to the **docs master branch**

There is a To-Do list for libretro/docs [here](https://docs.libretro.com/meta/todo/)

You can submit suggestions or issues regarding documentation at the [libretro/docs issue tracker](https://github.com/libretro/docs/issues) or in our [forum thread](https://forums.libretro.com/t/wip-adding-pages-to-documentation-site/10078/).

## Adding a new core

These are the documents that should be added/updated when a new core is added to the libretro ecosystem.

- Add the core to docs/library/ (Follow the latest core template. docs/meta/core_template.md)
- Add the core to mkdocs.yml
- Add the core to docs/meta/core_list.md
- Add the core to docs/meta/see_also.md if it's related to another core in some way
- Add the core to docs/tech/licenses.md
- Add the core to docs/meta/todo.md
- Add the core to docs/guides/softpatching.md if it supports softpatching
- Add the core to docs/guides/retroachievements.md if it supports cheevos