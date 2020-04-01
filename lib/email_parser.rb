# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


require 'pry'

class EmailAddressParser

        attr_accessor :emails

        def initialize(parse)
            @emails = parse

           # @parse = parse

            
        end

        

    def parse
        
            var = @emails.gsub(/,/,"")
            var.split(" ")

        binding.pry
        
       # @emails.split(" ")
       # the_string.gsub(/,/,"")

    end


end





