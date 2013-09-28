#!/usr/bin/env ruby


class Product
attr_accessor :cod, :name, :price

def initialize(cod,name,price)
	@cod=cod
	@name=name
	@price=price.to_i
end


end
