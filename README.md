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

I'm porting the old `.tmLanguage` syntax to the new `.sublime-syntax` format and upgrading the package to target Sublime&nbsp;Text&nbsp;4:

- [`TADS3.sublime-syntax`][TADS3.sublime-syntax]

The original syntax file(s) are currently preserved unchanged in the package — beside being renamed to uppercase, they remain identical to their upstream counterparts:

- [`TADS3.tmLanguage`][TADS3.tmLanguage] — ST2 syntax definition.
- [`TADS3.YAML-tmLanguage`][TADS3.YAML-tmLanguage] — intermediate YAML definition (ignored by ST).

Sublime Text version 3 and above, upon encountering a dual syntax definition, will favour the new `.sublime-syntax` format and ignore the old `.tmLanguage` file — which means that preserving the old syntax is not only harmless, but it also allows Sublime&nbsp;Text&nbsp;2 users to use this package too, since ST2 will ignore the `.sublime-syntax` and fallback on the old `.tmLanguage` file.

If I remember correctly, the `.YAML-tmLanguage` file was an [intermediate serialization format] which allowed ST2 users to work on syntaxes using YAML instead of XML, by editing the YAML definition and converting it to the `.tmLanguage` format via the [PackageDev] dev tools.
Anyhow, right now I'm still keeping it in the repository since it's ignored by the editor, hence it's harmless to the project.


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

[intermediate serialization format]: https://github.com/SublimeText/PackageDev/wiki/Serialized-Conversion "Learn more syntax files serialization at PackageDev Wiki"

<!-- packages -->

[PackageDev]: https://packagecontrol.io/packages/PackageDev "Package Control » PackageDev"

<!-- people and orgs -->

[@VoidPhantom]: https://github.com/VoidPhantom "View @VoidPhantom's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- project files -->

[LICENSE]: ./LICENSE "View MIT License"
[TADS3.sublime-syntax]: ./TADS3.sublime-syntax
[TADS3.tmLanguage]: ./TADS3.tmLanguage
[TADS3.YAML-tmLanguage]: ./TADS3.YAML-tmLanguage

<!-- EOF -->
