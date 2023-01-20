# TADS 3 Syntax for Sublime Text 4

- https://github.com/tajmone/ST4-TADS3

A Sublime Text 4 package adding support for the [TADS 3] authoring system for Interactive Fiction.

Based on [@VoidPhantom]'s TADS&nbsp;3 package (2014–2019) for Sublime&nbsp;Text&nbsp;2:

- https://github.com/VoidPhantom/sublime-tads3

Project maintained by [Tristano Ajmone], since January 2023.



-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About](#about)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# About

This a fork of [@VoidPhantom]'s TADS&nbsp;3 package (2014–2019) for Sublime&nbsp;Text&nbsp;2:

- https://github.com/VoidPhantom/sublime-tads3

My goal is to port the old `.tmLanguage` syntax to the new `.sublime-syntax` format and upgrade the package to target Sublime&nbsp;Text&nbsp;4.

Currently, the original syntax file(s) are unchanged and identical to their upstream counterparts:

- [`tads3.tmLanguage`][tads3.tmLanguage]
- [`tads3.YAML-tmLanguage`][tads3.YAML-tmLanguage]

Before migrating the syntax to the new format, I want to build robust syntax tests to ensure that scopes are not broken during the process.


# License

- [`LICENSE`][LICENSE]

```
MIT License

Copyright (c) 2023 Tristano Ajmone

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


Although the original package by [@VoidPhantom] was released under the terms of the [Unlicense], I chose to adopt the MIT License for this new package to avoid the legal pitfalls of public domain not being recognized by every country.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[TADS 3]: https://www.tads.org "TADS website"
[Unlicense]: https://unlicense.org "Unlicense website"

<!-- people and orgs -->

[@VoidPhantom]: https://github.com/VoidPhantom "View @VoidPhantom's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"


<!-- project files -->

[LICENSE]: ./LICENSE "View MIT License"

[tads3.tmLanguage]: ./tads3.tmLanguage
[tads3.YAML-tmLanguage]: ./tads3.YAML-tmLanguage


<!-- EOF -->
