require_relative "queue.rb"

QUEUE = Queue.new

def get_command
  command = gets.chomp.strip.downcase.split(" ")
  invalid = command.first == nil || !valid_command?(command.first.to_sym)

  if invalid
    puts "Please enter a valid command. Type help for more"
    get_command
  else
    return command
  end

end

def valid_command? command
  COMMANDS.any? {|k, v| k == command }
end 

def load 
  QUEUE.load
end

def queue option
  case option 
  when "clear" 
    QUEUE.clear
  when "count"
    QUEUE.count
  end
end

def help(command = "")
  if command.empty?
    puts "***************"
    puts "The following commands are available to you:"
    puts COMMANDS.keys
    puts "Type 'help' and a command for a command desctiption."
  end

  case command
  when "load"  
    puts COMMANDS[:load]
  when "help"
    puts COMMANDS[:help]
  when "find"
    puts COMMANDS[:find]
  when "exit"
    puts COMMANDS[:exit]
  end
end