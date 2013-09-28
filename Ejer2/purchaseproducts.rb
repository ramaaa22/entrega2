
require_relative 'product'
require_relative 'purchase'

#!/usr/bin/env ruby

p1=Product.new("01","bb",10)

p2=Product.new("eeea","bdfb",20)

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
p.add(p1)




p p.total

p.apply_discount do |purchase|
  purchase.total -= purchase.total * 0.2 if purchase.cantItems > 10
end
puts p.total



