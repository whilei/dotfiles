
# To have launchd start postgresql at login:
#   ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
# Then to load postgresql now:
#   launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
# Or, if you don't want/need launchctl, you can just run:
#   postgres -D /usr/local/var/postgres


# ia@mh:~/dev/randori/arcadia (isaac-pg) $ postgres -D /usr/local/var/postgres
# FATAL:  database files are incompatible with server
# DETAIL:  The data directory was initialized by PostgreSQL version 9.4, which is not compatible with this version 9.5.1.
# ia@mh:~/dev/randori/arcadia (isaac-pg) $ rm -rf /usr/local/var/postgres && initdb /usr/local/var/postgres -E utf8
# The files belonging to this database system will be owned by user "ia".
# This user must also own the server process.

# Success. You can now start the database server using:
# pg_ctl -D /usr/local/var/postgres -l logfile start

alias pgstart='postgres -D /usr/local/var/postgres'


# Thanks for installing Lunchy.  We know you're going to love it!

# If you want to add tab-completion (for bash), add the following
# to your .bash_profile, .bashrc or .profile

#LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
# . $LUNCHY_DIR/lunchy-completion.bash
#fi
