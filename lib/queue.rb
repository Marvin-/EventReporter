require "csv"

class Queue

  attr_accessor :queue, :contents

  def initialize 
    @queue = [] 
  end

  def load filename = "event_attendees.csv"
    @contents = CSV.open filename, headers: true, header_converters: :symbol 
  end

  def count
    if !@contents
      puts 0
    else 
      puts @contents.count
    end
  end

  def clear
    @queue = []
  end


end