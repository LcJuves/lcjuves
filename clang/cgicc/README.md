# README for GNU cgicc

GNU cgicc is an ANSI C++ compliant class library that greatly simplifies the
creation of CGI applications for the World Wide Web. cgicc performs the
following functions:

- Parses both GET and POST form data transparently
- Provides string, integer, floating-point and single- and multiple-choice
  retrieval methods for form data
- Provides methods for saving and restoring CGI environments to aid in
  application debugging
- Provides full on-the-fly HTML 4.0 generation capabilities, with support for
  cookies
- Supports HTTP file upload
- Compatible with FastCGI

Please send bug reports, suggestions, and comments to
https://savannah.gnu.org/projects/cgicc

This package should contain the following directories:

cgicc/&emsp;&emsp;&emsp;&emsp;The source code to the GNU cgicc library</br>
contrib/&emsp;&emsp;&emsp;&nbsp;Contributed non-parsed header and FastCgi examples</br>
demo/&emsp;&emsp;&emsp;&emsp;Four demonstration applications using cgicc</br>
doc/&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;Complete documentation for cgicc in html format</br>
example/&emsp;&emsp;&nbsp;&nbsp;&nbsp;A skeleton CGI application using cgicc and autoconf</br>
support/&emsp;&emsp;&emsp;Installation/configuration support files</br>
win/&emsp;&emsp;&emsp;&emsp;&emsp;Win32 project files

[Click me to download the source code](https://ftp.gnu.org/gnu/cgicc/cgicc-3.2.19.tar.gz)
