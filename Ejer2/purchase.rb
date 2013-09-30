#!/usr/bin/env ruby

class Purchase
attr_accessor :list, :index, :total

def initialize
	@list=[]
	@total=0
end

def add(product)
	@list << product
	@total= @total + product.price
end

def delete(product)
	@list.delete(product)

end



def cantItems
	@list.length
end

def apply_discount
	yield self
end

def hash_with_cant
	hash=Hash.new(0)
	@list.each{|elem| hash[elem.cod]+=1 }
	hash
end

def hash_with_price
	hash=Hash.new(0)
	@list.each{|elem| hash[elem.cod]=elem.price}
	hash
end

end
