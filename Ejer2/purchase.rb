#!/usr/bin/env ruby

class Purchase
attr_accessor :list, :index, :total

def initialize
	@list=[]
	@index=0
	@total=0
end

def add(product)
	@list[@index]=product
	@index=@index+1
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

end
