require "scanf.rb"
def recette0( n, ordre, desordre )
  # Inserez votre code ici 
  
end
n = STDIN.readline.to_i(10)
ordre = STDIN.readline.split(" ").map{ |x| x.to_i(10) }
desordre = STDIN.readline.split(" ").map{ |x| x.to_i(10) }
recette0(n, ordre, desordre)
