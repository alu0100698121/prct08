class Matriz
	attr_accessor :N, :M, :contenido #Getters & Setters
	
	def initialize(n,m) #Inicializa el valor de las filas (n) y columnas (m).
		raise ArgumentError, 'Tam. Matriz no valido' unless n.is_a? Integer and m.is_a? Integer and n > 0 and m > 0		
		@N, @M = n, m
		@contenido = Array.new(@N,0)
		i = 0
		while i < @N
			@contenido[i] = Array.new(@M,0)
			i += 1	
		end
	end
	
	def [](i)
		raise ArgumentError, 'Indice no valido' unless i.is_a? Integer and i >= 0 and i < @N
		@contenido[i]
	end
	
	def []=(i,other)
		raise ArgumentError, 'Indice no valido' unless i.is_a? Integer and i >= 0 and i < @N
		raise ArgumentError, 'Tam. fila no valido' unless other.size <= @M		
		@contenido[i] = other			
	end
end
