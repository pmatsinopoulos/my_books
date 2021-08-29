# File: no-wait-3.rb
#
fork { exit }
Process.wait(-1, Process::WNOHANG)
