README last updated: 02-02-17@14_20_35

## Credits
Thank you Holman, Paul, JFraz, Cowboy... the list goes on and my memory nor patience does
not.

Much of the dir structure is based on Holman-esque genre-fications.



## Table of contents
> `tree >> /Users/ia/.dotfiles/README.md`

```
.
├── README.md
├── TOC.md
├── bashers
│   ├── 10-random-alphanum.bash
│   ├── aka.bash
│   ├── aliases.bash
│   ├── bash-utils.bash
│   ├── curl.bash
│   ├── delete-empty-dirs.bash
│   ├── distinct-file-types.bash
│   ├── find-git-configs-and-do-.bash
│   ├── last-modified.bash
│   ├── list-dir-contents-without-cd.bash
│   ├── print-empty-dirs.bash
│   ├── sort-downloads.bash
│   └── substitute-extensions.bash
├── funk
│   ├── README.md
│   ├── aliases.bash
│   ├── alot.bash
│   ├── dev-whiteboard.bash
│   ├── housekeep.sh
│   ├── just.bash
│   ├── paper.sh
│   ├── paulmiller.bash
│   ├── rememberer.bash
│   ├── scrape-images.bash
│   ├── scratchers.bash
│   └── sms.bash
├── git
│   ├── aliases.bash
│   ├── git-completion.bash
│   ├── git-prompt-init.bash
│   ├── git-prompt.bash
│   └── gitimg.bash
├── go
│   └── env.bash
├── jlwarez
│   ├── Awkedy\ AwkAWk.sh
│   ├── CUrl.sh
│   ├── Externalized\ Random\ access\ objects\ backup.java
│   ├── Piechart\ R.sh
│   ├── RsyncFlyDie.sh
│   ├── S3cmd.sh
│   ├── SED.sh
│   ├── batch\ genome.sh
│   ├── dbGaP\ decrypt.sh
│   ├── find\ and\ list\ subfolders.sh
│   ├── mappability.sh
│   └── touchSpecific.sh
├── network
│   └── aliases.bash
├── osx
│   ├── aliases.bash
│   ├── set-defaults.sh
│   └── terminals
│       ├── Homebrew\ -\ transparent.terminal
│       ├── Stars\ -\ transparent.terminal
│       └── Stripes\ -\ transparent.terminal
├── private
│   ├── aliases.bash
│   ├── bbi.bash
│   ├── checkups.bash
│   ├── contacts.sh
│   ├── env.bash
│   ├── github.bash
│   └── twitter.bash
├── python
│   ├── env.bash
│   └── py-serve.bash
├── remembered
├── ruby
│   ├── aliases.bash
│   └── env.bash
├── scripts
│   ├── convert_append_all.bash
│   ├── cracker.sh
│   ├── dreamhost_python_setup.sh
│   ├── emacs.daemon.sh
│   ├── every-other-file.sh
│   ├── google-drive-export.sh
│   ├── local.macspoof.plist
│   ├── readem.sh
│   ├── screenshotter.sh
│   └── shit-i-changed-my-github-username.sh
├── sedawk
│   └── aliases.bash
├── system
│   ├── aliases.bash
│   ├── env.bash
│   ├── navigation.bash
│   ├── paths.bash
│   └── postgres.bash
└── vim
    ├── env.bash
    └── vi-commands-basic.txt

15 directories, 81 files
```

## ... and the 5 most recently modified
> gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> /Users/ia/.dotfiles/README.md

```
-rwxr-xr-x 1 ia       staff         394 02/02/2017 14:02:23 ./funk/paper.sh
-rw-r--r-- 1 ia       staff        1414 02/02/2017 14:02:51 ./funk/paulmiller.bash
-rw-r--r-- 1 ia       staff      462162 02/02/2017 14:08:22 ./TOC.md
-rwxr-xr-x 1 ia       staff        1856 02/02/2017 14:20:34 ./scripts/readem.sh
-rw-r--r-- 1 ia       staff        3568 02/02/2017 14:20:35 ./README.md
```

## Cloc
> `cloc . >> /Users/ia/.dotfiles/README.md`

```
      93 text files.
classified 93 files      92 unique files.                              
      22 files ignored.

http://cloc.sourceforge.net v 1.64  T=0.40 s (181.0 files/s, 15984.0 lines/s)
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
Bourne Again Shell               47            400            732           3232
Bourne Shell                     23            462            701            565
JSON                              1              2              0            166
Java                              1             53              2             56
Javascript                        1             12             28             37
--------------------------------------------------------------------------------
SUM:                             73            929           1463           4056
--------------------------------------------------------------------------------
```
