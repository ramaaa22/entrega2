require_relative 'mamifero'
#!/usr/bin/env ruby
class Hombre < Mamifero
def caminar
	puts "camino como hombre"
end

def nadar
	puts "nado como hombre"
end

def hablar
	puts "hablo"
end

end
