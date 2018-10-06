puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
puts "Definición"
elegir al azar un elemento del hash
imprimir el value
puts "Un tipo de archivo en el que todos los valores están delimitados por comas."
puts "Adivinar: "
answer1 = gets.chomp
si  answer1 != key de hash
puts "Incorrecto!, Trata de nuevo"
puts "Adivinar: "
si answer1 == gets.chomp
puts "Correcto!"


y de ahi vuelve y elige otro elemento al azar del hash
e inicia lo mismo
puts "Definición"
puts "un meta-lenguaje que permite definir lenguajes de marcas desarrollado por el World Wide Web Consortium utilizado para almacenar datos en forma legible"


solution = {}
solution["CSV"] = "Un tipo de archivo en el que todos los valores están delimitados por comas."
solution["XML"] = "un meta-lenguaje que permite definir lenguajes de marcas desarrollado por el World Wide Web Consortium utilizado para almacenar datos en forma legible"
puts solution



clases estado y comportamiento necesitas
clase info
guardar hash
clase preguntas
coger aleatorio un value de hash e imprimirlo
guardar key en correct_answer

v

# lee y escribe tareas
def save_tasks(name,tareas)
  content = ""
  tareas.each_with_index do |el,i|
    content += (tareas[i][:id]).to_s + "," + tareas[i][:name] + "," + tareas[i][:done].to_s + "\n"
  end
  File.open(name, 'w') { |file| file.write(content) }
end

def load_tasks(name)
  tasks = []
  return tasks unless File.file?(name)
  arr = IO.readlines(name)
   arr.each_with_index do |el,i|
     el = el.split(',')
     tasks[i] = {id: el[0].to_i, name: el[1], done: el[2]=="true\n" }
   end
   tasks
 end
