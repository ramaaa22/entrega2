#!/usr/bin/env ruby

class Purchase
attr_accessor :products, :total

def initialize
	@products=[]
	@total=0
end

def add(product)
	@products << product
	@total= @total + product.price
end

def delete(product)
	@products.delete(product)

end



def cantItems
	@products.length
end

def apply_discount
	yield self
end

def hash_with_cant
	hash=Hash.new(0)
	@products.each{|elem| hash[elem.code]+=1 }
	hash
end

def hash_with_price
	hash=Hash.new(0)
	@products.each{|elem| hash[elem.code]=elem.price}
	hash
end

end
