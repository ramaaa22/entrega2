require_relative 'hombre'
require_relative 'sapo'
require_relative 'aguila'
require_relative 'perro'

#!/usr/bin/env ruby

hom=Hombre.new
hom.caminar
hom.hablar
sapo=Sapo.new
sapo.saltar
aguila=Aguila.new
aguila.volar
perro=Perro.new
perro.volar
