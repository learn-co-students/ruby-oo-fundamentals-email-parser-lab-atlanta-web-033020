# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(unformatted)
    @email_addresses = unformatted
  end
  
  def parse
    temp_arr = @email_addresses.split(/[,\s]+/)
    arr = []
    
    temp_arr.each do |email|
      arr.push(email.strip)
    end
    
    arr.uniq
  end
  
end