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
	
	# Operadores unarios
	
	def to_s
	  s = ""
      i = 0
      while(i < @N)
        j = 0
        while(j < @M)
	      s += "#{contenido[i][j]}\t"
	      j += 1
	    end
	    s += "\n"
	    i += 1
      end
	  s
	end
	
	def -@
      i = 0
	  c = Matriz.new(@N, @M)
      while(i < @N)
        j = 0
        while(j < @M)
	      c[i][j] = -contenido[i][j]
	      j += 1
    	  end
	    i += 1
      end
      c
    end
end
