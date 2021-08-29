# File: no-wait-1.rb
#
Process.wait(-1, Process::WNOHANG)
