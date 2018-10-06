class Information

  def convert_text_into_object(file_path)
    @hash1 = {} #hacer un array de hashes con info de afirmacion , respuesta
    hash2 = {}
    hash3 = {}
    hash4 = {}
    array = IO.readlines(file_path)
    key1 = array[1].delete "\n"
    value1 = array[0].delete "\n"
    key2 = array[3].delete "\n"
    value2 = array[2].delete "\n"
    key3 = array[5].delete "\n"
    value3 = array[4].delete "\n"
    key4 = array[7].delete "\n"
    value4 = array[6].delete "\n"
    @hash1[key1] = value1 # este hash tiene key de respuesta y value de definicia de cada pregunta
    hash2[key2] = value2
    hash3[key3] = value3
    hash4[key4] = value4
    big_array = []
    big_array << hash1
    big_array << hash2
    big_array << hash3
    big_array << hash4
    print big_array # este array contiene hashes con todas las respuestas
  end
  def make_a_question
    puts "Welcome to the game bitch! , la pregunta es:"
    puts @hash1

  end
end

 d1 = Information.new
d1.convert_text_into_object("data.txt")
d1.make_a_question
#
# class Question < Information
#   def make_a_question
#     puts "Welcome to the game bitch! , la pregunta es:"
#     puts hash1
#
#   end
# end
#
# q1 = Question.new
# q1.convert_text_into_object("data.txt")
# q1.make_a_question
