require_relative "methods.rb"

COMMANDS = {
  load: "Accepts <filename> option. 
         Erase any loaded data and parse the specified file. 
         If no filename is given, it will default to event_attendees.csv.", 
  help: "Output a listing of the available individual commands. 
         Accepts a <command> option which outputs a description of how to use the specific command.",
  find: "Finds all records matching the criteria for the given attribute.", 
  queue: "",
  exit: "Exits program."
}

loop do
  puts "Please enter a command"

  command = get_command
  first_command = command.first
  minus_first_command = command.drop(1).join(" ")

  case first_command
  when "load"
    load
  when "help"
    help minus_first_command
  when "find"
    find
  when "queue"
    queue minus_first_command
  when "exit"
    exit
  end
end