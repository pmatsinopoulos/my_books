# File: no-wait-2.rb
#
fork { sleep 10 }
Process.wait(-1, Process::WNOHANG)
