require './lib/matrices.rb'

decribe Matriz do
	before :each do
		@m1 = Matriz.new(2,2)
	end
	describe " # Almacenamiento de matrices. " do
		it " # Se debe almacenar el numero de filas " do
			@m1.N
		end
	end
	
end