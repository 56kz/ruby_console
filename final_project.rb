class Game
  attr_reader :score
  @@questions = IO.readlines("data.txt") #Ingresa a una matriz question la informacion

  def initialize
      @score = 0; #inicializa el puntaje en 0
  end

  def question(i)
      @@questions[i].split("(Definicion)")[1] #coje la matriz con todas las respuestas y publica la def1
  end

  def answer(answer_player,i) #entra la repsuesta del jugador y el numero de la pregunta
      real_answer = @@questions[i].split("(Respuesta)")[1].split(/\W/)[1] #encuentra la respuesta real
      note = (real_answer == answer_player) #define tru o false para subir la nota o dejarla igual
  end

  def total_score(note)
      @score +=1 if note == true #si la nota es true suba 1 el puntaje
  end

  def show_question
    i = 0  #inicia en 0
    loop do
      break if Game.preguntas-1 <= i #
      print question(i) # Imprime la pregunta
      print "Adivina: "
      user_answer = gets.chomp.upcase  # Leo la respuesta
      note = answer(user_answer,i+1) # califico la respuesta (true buena, false incorrecta)
      total_score(note) # Incrementa el puntaje del jugador si responde bien

      if note
        puts "¡Correcto! Llevas: #{@score} puntos"  #imprime puntake si gana pregunta
        i += 3 #aumenta 3 si gana
      else
        puts "¡Incorrecto! Trata de nuevo"
      end
    end
  end

  def to_play
    puts "\n\t¡¡Bienvenido a reto 5!!\n "
    puts "Para jugar, sólo ingresa el término correcto para cada una de las definiciones.\n\n¿Listo? ¡Vamos!\n "
    show_question #se va para el metodo show question
  end

  def self.preguntas
      @@questions.size;
  end

end

k1 = Game.new
k1.to_play
