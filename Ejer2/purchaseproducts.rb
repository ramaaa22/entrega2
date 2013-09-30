
require_relative 'product'
require_relative 'purchase'

#!/usr/bin/env ruby

p1=Product.new("01","Lampara",10)

p2=Product.new("02","Matafuegos",20)

p=Purchase.new
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p1)
p.add(p2)


puts "Precio sin primer descuento: #{p.total}"

#Si la lista de productos tiene más de 10 productos, se cobra el 20% menos

p.apply_discount do |purchase|
  purchase.total -= purchase.total * 0.2 if purchase.cantItems > 10
end
puts "Precio con primer descuento: #{p.total}"

#Si la lista de productos tiene más de 3 productos iguales, cada 3 paga 2

pur=Purchase.new
pur.add(p1)
pur.add(p1)
pur.add(p1)
pur.add(p1)
pur.add(p1)
pur.add(p1)
puts "Precio sin segundo descuento: #{pur.total}"

pur.apply_discount do |purchase|
	hash=purchase.hash_with_cant
	hash.each do |key, value|
		elem_price=purchase.hash_with_price.values_at(key)[0]
		purchase.total-= (value/3) * elem_price  	
	end
end
 puts "Precio con segundo descuento: #{pur.total}"



