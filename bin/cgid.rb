#!/usr/bin/env ruby
require "socket"

serv = TCPServer.new ENV["PORT"]
loop do
  begin
    sock = serv.accept
    sock.gets
    sock.puts "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\nHello world"
    sock.close
  rescue
  end
end