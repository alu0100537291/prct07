require "./lib/mcd.rb"

class Fraccion
	attr_accessor :num, :denom

	def initialize(a, b)
		x = mcd(a,b)
		@num = a/x
		@denom = b/x

		if (@num < 0 && @denom < 0)
			@num = @num * -1
			@denom = @denom * -1
		end

		if (@denom < 0)
			@denom = @denom * -1
			@num = @num * -1
		end
	end

	def to_s
		"#{@num}/#{@denom}"
	end

	def to_f
		@num.to_f/@denom.to_f
	end

	def +(a,b)
		Fraccion.new(@num * b + @denom * a, @denom * b)
	end

	def -(a,b)
		Fraccion.new(@num * b - @denom * a, @denom * b)
	end

	def *(a,b)
		Fraccion.new(@num * a, @denom * b)
	end

	def /(a,b)
		Fraccion.new(@num * b, @denom * a)
	end

	def %(a,b)
		division = Fraccion.new(@num * b, @denom * a)
		division.num % division.denom
	end

	def ==(numero)
		if ((@num == numero.num) && (@denom == numero.denom))
			true
		else
			false
		end
	end

	def abs
		@num = @num.abs
		@denom = @denom.abs
		to_s
	end

	def reciprocal
		x = @num
		@num = @denom
		@denom = x
	end

	def -@
		if (@num > 0)
			@num = @num * -1
		end
	end

	def >(numero)
		if (self.to_f > numero.to_f)
			true
		else
			false
		end
	end

	def >=(numero)
		if (self.to_f >= numero.to_f)
			true
		else
			false
		end
	end

	def <(numero)
		if (self.to_f < numero.to_f)
			true
		else
			false
		end
	end

	def <=(numero)
		if (self.to_f <= numero.to_f)
			true
		else
			false
		end
	end
end