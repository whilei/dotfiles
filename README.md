

## Cloc
> `cloc . >> /Users/ia/.dotfiles/README.md`


```
      95 text files.
classified 95 files      94 unique files.                              
      55 files ignored.

http://cloc.sourceforge.net v 1.64  T=1.93 s (21.8 files/s, 2819.3 lines/s)
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
Bourne Again Shell                6            207            290           2429
Bourne Shell                     28            521            776            768
Ruby                              6             79             57            202
Java                              1             53              2             56
JSON                              1              0              0              1
--------------------------------------------------------------------------------
SUM:                             42            860           1125           3456
--------------------------------------------------------------------------------
```

## Table of contents
> `tree --dirsfirst -alLhtDFC 4 -I .git >> /Users/ia/.dotfiles/README.md`


```
[01;34m.[00m
├── [ 476 Dec  3 11:29]  [01;34mjlwarez[00m/
│   ├── [2.1K Dec  3 11:15]  Awkedy\ AwkAWk.sh
│   ├── [1.8K Dec  3 11:15]  CUrl.sh
│   ├── [1.6K Dec  3 11:15]  Externalized\ Random\ access\ objects\ backup.java
│   ├── [ 644 Dec  3 11:15]  batch\ genome.sh
│   ├── [2.0K Dec  3 11:15]  dbGaP\ decrypt.sh
│   ├── [2.1K Dec  3 11:15]  Piechart\ R.sh
│   ├── [ 360 Dec  3 11:15]  RsyncFlyDie.sh
│   ├── [ 232 Dec  3 11:15]  S3cmd.sh
│   ├── [2.3K Dec  3 11:15]  SED.sh
│   ├── [ 618 Dec  3 11:15]  mappability.sh
│   ├── [ 238 Dec  3 11:15]  touchSpecific.sh
│   └── [ 174 Feb 13 12:10]  find\ and\ list\ subfolders.sh
├── [ 272 Feb 12 10:19]  [01;34mgit[00m/
│   ├── [ 16K Dec 10  8:47]  git-prompt.zsh
│   ├── [2.0K Dec 10 10:41]  git-prompt-init.zsh
│   ├── [ 56K Feb  5 12:36]  git-completion.zsh
│   ├── [  10 Feb  8 11:37]  .gitignore_global.hardlink
│   ├── [ 578 Mar 21  6:00]  aliases.zsh
│   └── [1.6K Mar 21  6:18]  .gitconfig.hardlink
├── [ 136 Feb 12 10:22]  [01;34mruby[00m/
│   ├── [ 117 Nov 30  9:19]  env.zsh
│   └── [ 202 Feb 12 10:22]  aliases.zsh
├── [ 170 Feb 12 14:56]  [01;34mosx[00m/
│   ├── [ 170 Dec  4  8:05]  [01;34mterminals[00m/
│   │   ├── [2.8K Dec  4  8:01]  Homebrew\ -\ transparent.terminal
│   │   ├── [1.9K Dec  4  8:01]  Stars\ -\ transparent.terminal
│   │   └── [2.5K Dec  4  8:01]  Stripes\ -\ transparent.terminal
│   ├── [ 52K Dec  3 10:38]  set-defaults.sh
│   └── [ 109 Feb 12 14:56]  aliases.zsh
├── [ 136 Feb 13 20:01]  [01;34mpython[00m/
│   ├── [  69 Nov 30  9:16]  env.zsh
│   └── [ 742 Dec 10 10:39]  py-serve.zsh
├── [ 170 Feb 18 11:51]  [01;34mwhiteboard[00m/
│   ├── [1.6K Dec 22 13:46]  vi-commands-basic.txt
│   ├── [ 120 Feb 18 11:24]  stuff.md
│   └── [3.4K Feb 18 12:02]  tree-help.md
├── [ 544 Feb 21 16:18]  [01;34mbashers[00m/
│   ├── [  79 Feb 12 13:32]  distinct-file-types.zsh
│   ├── [  51 Feb 12 14:08]  print-empty-dirs.zsh.zsh
│   ├── [  53 Feb 12 14:09]  delete-empty-dirs.zsh.zsh
│   ├── [  59 Feb 13 11:21]  last-screen-shot.zsh
│   ├── [ 156 Feb 13 11:32]  last-modified-dir.zsh
│   ├── [  72 Feb 13 11:35]  sort-by-size.zsh
│   ├── [ 196 Feb 18 11:25]  edit-then-source.zsh
│   ├── [ 603 Feb 18 11:43]  isip.zsh
│   ├── [1.9K Feb 18 11:43]  save-command.zsh
│   ├── [2.4K Feb 18 12:13]  each-dir.sh
│   ├── [ 249 Feb 21 15:28]  substitute-extensions.zsh
│   ├── [ 151 Feb 21 15:32]  search-in-files.zsh
│   ├── [1.3K Feb 21 16:18]  last-modified.sh
│   └── [ 230 Mar 30 19:57]  aliases.zsh
├── [ 102 Feb 27  8:14]  [01;34mvim[00m/
│   └── [   0 Feb 27  8:19]  env.zsh
├── [ 272 Feb 28  9:43]  [01;34mprivate[00m/
│   ├── [ 121 Nov 30  9:27]  checkups.zsh
│   ├── [ 166 Feb 22  8:22]  [01;32mcontacts.sh[00m*
│   ├── [  74 Feb 22  8:30]  bbi.zsh
│   ├── [ 547 Feb 23 11:53]  aliases.zsh
│   ├── [ 84K Feb 29  9:00]  us-list.json
│   └── [ 807 Mar 14 10:09]  [01;32menv.zsh[00m*
├── [ 340 Feb 29 17:55]  [01;34mtaiga[00m/
│   ├── [ 340 Feb 29 16:21]  [01;34mscratchers[00m/
│   │   ├── [1.1K Feb 29 16:20]  [01;32mlist-userstories.rb[00m*
│   │   ├── [ 496 Feb 29 16:20]  list-userstories.sh
│   │   ├── [ 541 Feb 29 16:20]  rb-test-auth.rb
│   │   ├── [ 983 Feb 29 16:20]  resolve-task.sh
│   │   ├── [ 679 Feb 29 16:20]  resolve-userstory.sh
│   │   ├── [ 225 Feb 29 16:21]  ruby-options-parse-test.rb
│   │   ├── [6.7K Feb 29 16:21]  taiga_import_story.sh
│   │   └── [ 641 Feb 29 16:21]  resolve-project.sh
│   ├── [ 568 Feb 29 16:41]  taiga-rb.rb
│   ├── [ 103 Feb 29 16:41]  aliases.zsh
│   ├── [1.4K Feb 29 17:24]  [01;32mauth.sh[00m*
│   ├── [1.0K Feb 29 17:51]  LICENSE
│   ├── [ 780 Feb 29 17:53]  README.md
│   ├── [3.6K Mar  1  4:44]  api.rb
│   └── [2.1K Mar  1  4:44]  interface.rb
├── [ 510 Mar 15 17:24]  [01;34mfunk[00m/
│   ├── [ 552 Dec  3 11:55]  [01;32mpandocdo.sh[00m*
│   ├── [  91 Dec 10  9:10]  just.zsh
│   ├── [  64 Dec 21  9:13]  poop-logger.zsh
│   ├── [  74 Jan  4  8:41]  mirror-mirror.zsh
│   ├── [ 121 Feb 12 13:27]  dev-whiteboard.zsh
│   ├── [ 707 Feb 19  8:00]  video-to-gif.sh
│   ├── [2.2K Feb 21 12:58]  scratchers.zsh
│   ├── [ 143 Feb 21 15:25]  scrape-images.zsh
│   ├── [ 472 Feb 22  8:25]  sms.zsh
│   ├── [1.0K Feb 28 21:05]  [01;32mpaper.sh[00m*
│   ├── [ 363 Mar 15 17:35]  aliases.zsh
│   ├── [1.6K Mar 16  9:56]  [01;32mscreenshotter.sh[00m*
│   └── [1.2K Apr  1 13:48]  [01;32mreadem.sh[00m*
├── [ 102 Mar 25  6:59]  [01;34mfreya[00m/
│   └── [ 170 Mar 25  7:00]  [01;34msystem[00m/
│       ├── [ 244 Mar 25  6:58]  [01;32menv.zsh[00m*
│       ├── [ 754 Mar 25  7:00]  aliases.zsh
│       └── [ 528 Mar 25  7:07]  [01;32mnavigation.zsh[00m*
├── [ 374 Mar 30 19:30]  [01;34msystem[00m/
│   ├── [1.3K Feb 12 15:42]  [01;32mbash-utils.zsh[00m*
│   ├── [  72 Feb 13 12:16]  [01;32mhousekeep.sh[00m*
│   ├── [ 216 Feb 19  7:40]  [01;32mtophify.zsh[00m*
│   ├── [ 756 Feb 22  8:33]  [01;32msort-downloads.zsh[00m*
│   ├── [ 244 Mar  1  3:45]  [01;32menv.zsh[00m*
│   ├── [1.6K Mar  1  3:50]  [01;32mnavigation.zsh[00m*
│   ├── [ 513 Mar  1  4:06]  paths.zsh
│   ├── [1.3K Mar 30 19:47]  postgres.zsh
│   └── [1.6K Mar 31  9:45]  aliases.zsh
├── [ 102 Apr  1 13:40]  [01;34mlint[00m/
│   └── [3.7K Apr  1 13:40]  .eslintrc
├── [ 11K Feb 27  8:17]  .vimrc.hardlink
├── [  30 Feb 28 21:06]  .gitignore
├── [3.5K Mar 31  9:00]  .slate.hardlink
└── [1.2K Apr  1 13:48]  README.md

17 directories, 96 files
```

## ... and the 5 most recently modified
> gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> /Users/ia/.dotfiles/README.md


```
-rw-r--r-- 2 ia       staff        3622 03/31/2016 09:00:23 ./.slate.hardlink
-rw-r--r-- 1 ia       staff        1598 03/31/2016 09:45:45 ./system/aliases.zsh
-rw-r--r-- 1 ia       staff        3782 04/01/2016 13:40:33 ./lint/.eslintrc
-rwxr-xr-x 1 ia       staff        1265 04/01/2016 13:48:20 ./funk/readem.sh
-rw-r--r-- 1 ia       staff        7958 04/01/2016 13:48:26 ./README.md
```

## Dependencies
> `$ brew leaves >> README.md `


```
cloc
coreutils
ffmpeg
findutils
ghostscript
graphicsmagick
grc
heroku-toolbelt
htop-osx
imagemagick
imagesnap
isl
jbig2dec
jq
libksba
libmpc
libvo-aacenc
libyaml
mysql
node
pandoc
poppler
postgis
pyenv-virtualenv
pyenv-virtualenvwrapper
python
python3
spark
tmux
tree
unoconv
wdiff
wget
homebrew/dupes/zlib
```

## Gems
> `env GEM_PATH=/Users/ia/.rvm/gems/ruby-2.2.1 gem list`

```
actionmailer (4.2.5, 4.2.2)
actionpack (4.2.5, 4.2.2)
actionview (4.2.5, 4.2.2)
activejob (4.2.5, 4.2.2)
activemodel (4.2.5, 4.2.2)
activerecord (4.2.5, 4.2.2)
activesupport (4.2.5, 4.2.2)
arel (6.0.3)
bcrypt (3.1.10)
bigdecimal (1.2.6)
binding_of_caller (0.7.2)
boom (0.4.0)
bootstrap-sass (3.2.0.0)
builder (3.2.2)
bundler (1.11.2)
byebug (8.2.2, 8.2.1)
chunky_png (1.3.5)
coderay (1.1.0)
coffee-rails (4.1.1)
coffee-script (2.4.1)
coffee-script-source (1.10.0)
colorator (0.1)
compass (1.0.3)
compass-core (1.0.3)
compass-import-once (1.0.5)
concurrent-ruby (1.0.0)
debug_inspector (0.0.2)
erubis (2.7.0)
execjs (2.6.0)
faker (1.6.3)
ffi (1.9.10)
gifme (0.0.8)
globalid (0.3.6)
i18n (0.7.0)
io-console (0.4.3)
jbuilder (2.4.1, 2.4.0)
jekyll (3.0.1)
jekyll-compose (0.4.1)
jekyll-sass-converter (1.3.0)
jekyll-watch (1.3.0)
jquery-rails (4.1.0)
json (1.8.3, 1.8.1)
kramdown (1.9.0)
liquid (3.0.6)
listen (3.0.5)
loofah (2.0.3)
lunchy (0.10.4)
mail (2.6.3)
mercenary (0.3.5)
method_source (0.8.2)
mime-types (2.99)
mini_portile2 (2.0.0)
minitest (5.8.4, 5.8.3)
multi_json (1.11.2)
nokogiri (1.6.7.2, 1.6.7.1)
orm_adapter (0.5.0)
pg (0.18.4)
pry (0.9.12.6)
psych (2.0.8)
rack (1.6.4)
rack-test (0.6.3)
rails (4.2.5, 4.2.2)
rails-deprecated_sanitizer (1.0.3)
rails-dom-testing (1.0.7)
rails-html-sanitizer (1.0.3, 1.0.2)
railties (4.2.5, 4.2.2)
rake (10.5.0, 10.4.2)
rb-fsevent (0.9.6)
rb-inotify (0.9.5)
rdoc (4.2.2, 4.2.1, 4.2.0)
rouge (1.10.1)
safe_yaml (1.0.4)
sass (3.4.21, 3.4.19)
sass-rails (5.0.4)
sdoc (0.4.1)
slop (3.6.0)
spring (1.6.2)
sprockets (3.5.2)
sprockets-rails (3.0.1, 3.0.0)
sqlite3 (1.3.11)
thor (0.19.1)
thread_safe (0.3.5)
tilt (2.0.2)
truncate_html (0.9.3)
turbolinks (2.5.3)
tzinfo (1.2.2)
uglifier (2.7.2)
web-console (2.3.0, 2.2.1)
yajl-ruby (1.1.0)
```
