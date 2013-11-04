require './lib/matrices.rb'

describe Matriz do
	before :each do
		@m1 = Matriz.new(2,2)
	end
	describe " # Almacenamiento de matrices. " do
		it " # Se debe almacenar el numero de filas " do
			@m1.N
		end
		it " # Se debe almacenar el numero de columnas " do
			@m1.M
		end
		it " # Se debe poder almacenar datos en forma vectorial en la matriz " do
			@m1[0]=[1,2]
		end
	end
	
end