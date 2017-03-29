require "csv"

COMMANDS = [ "load", "help", "queue", "find" ]
COMMAND = ""
queue = []

puts "Please enter a command"

def get_input
  action = gets.chomp.strip.downcase.split(",").first

  if !valid_command? action
    puts "Invalid command. Pleas enter a valid command."
    get_input
  else
    return action
  end
end

def valid_command? command
  COMMANDS.any? {|c| c == command }
end 

command = get_input

