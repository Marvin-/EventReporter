require_relative "queue.rb"

QUEUE = Queue.new

def get_command
  command = gets.chomp.strip.downcase.split(" ")
  first_word = command.first.to_sym

  if !valid_command? first_word
    puts "Please enter a valid command. Type help for more"
    get_command
  else
    return command
  end

end

def valid_command? command
  COMMANDS.any? {|k, v| k == command }
end 

