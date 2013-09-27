#!/usr/bin/env ruby


class Product
attr_accessor :cod, :name, :price

def initialize(cod,name,price)
	@cod=cod
	@name=name
	@price=price.to_i
end



end

class Purchase
attr_accessor :list, :index, :discounts

def initialize
	@list=[]
	@index=0
	@discounts=[]
end

def add(product)
	@list[@index]=product
	@index=@index+1
end

def delete(product)
	@list.delete(product)

end

def total
	tot=0
	@list.each do |elem| tot=tot + elem.price
	end
	tot
end



end


p1=Product.new("01","bb",14)

p2=Product.new("eeea","bdfb",20)

p=Purchase.new
p.add(p1)


p.add(p2)

p.delete (p2)

puts p.total






