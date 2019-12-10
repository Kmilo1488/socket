require 'socket'

socket = TCPSocket.open("localhost", 8080)

puts "Iniciando cliente"
while response = socket.gets
   puts response.chomp
end

puts "Finalizando cliente"
socket.close
