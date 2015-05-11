# vcp - verbose cp

[![Build Status](https://travis-ci.org/lynix/vcp.svg?branch=master)](https://travis-ci.org/lynix/vcp)

![](https://github.com/lynix/vcp/blob/master/vcp-2.png)


## SUMMARY

*vcp* is intended to be a (limited) replacement for *cp*, providing additional
features like visual progress information and error handling.

## USAGE

*vcp* is designed to be called similar to *cp*:

    $ vcp /foo/file1 /bar/directory2 /path/to/destination

(Note: in contrast to standard *cp*, you don't need to supply `-r` for copying
directories.)

For a complete list of switches and options please see the help text (`vcp -h`).


## FEATURES

Advantages compared to *cp* (the cool stuff):

* **Progress Information**  
    Progress bars or textual information like transfer state, speed and ETA.
* **Error Handling**  
    A failed file will not interrupt the whole process, it will be skipped and
    reported at the end.
* **Smart Argument Parsing**  
    No need to think of recursion ('cp -r'), folders will automatically be
    copied together with their contents.
* **Preponed Crawling**  
    All source items are crawled *before* transfer is started, allowing user
    prompt for overwriting or skipping.  
    (no coming back after two hours and seeing a dumb overwriting confirmation
    prompt which caused the whole transfer to stop just a few seconds after you
    left the room... ;) )

*vcp* currently supports regular files, directories and symlinks. Other types,
e.g. block devices or sockets are not supported and yield errors. 


## HISTORY / PHILOSOPHY

Back in 2009, after switching from Gentoo to Arch I started missing progress
information for *cp*/*mv*, which Gentoo had provided via a patch for *coreutils*.
As I used to copy large files around on a very weak PIII box, this annoyed me so
hard that I decided to write a simple replacement.

*vcp* was my very first piece of C code, and one can see this at some lines ;)  
I'll try to give this ancient project some new love in form of code style
improvements and proper abstraction if I find some time.

The goal of *vcp* is NOT to provide a full replacement for *cp* or *mv*. It
shall only be a simple tool for common file transfer operations, providing the
aforementioned additional features.


## BUGS / CONTACT

Feel free to send suggestions for improvements or bug reports using the *issues*
function on GitHub.


## LICENSE

This program is published under the terms of the *GNU General Public License,
version 3*. See the file LICENSE for more information.
