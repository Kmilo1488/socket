require 'socket'

puts "Iniciando servidor"
server = TCPServer.open(8080)
puts "Esperando comunicacion con el cliente"
loop{
   client = server.accept
   client.puts("Conexión establecida #{Time.now}")
   client.puts("Cerrando Conexión con el cliente #{client}")
   client.close
}
