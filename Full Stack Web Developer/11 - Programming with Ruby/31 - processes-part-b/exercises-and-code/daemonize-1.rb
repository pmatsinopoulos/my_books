# File: daemonize-1.rb
#
Process.daemon

$PROGRAM_NAME = 'my-daemon'
# Daemon has taken place. This is the daemonized part of the code, i.e. the code of the new spawned process
sleep
