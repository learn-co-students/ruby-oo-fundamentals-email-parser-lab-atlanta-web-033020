# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser

        attr_accessor :emails

        def initialize(parse)
            @emails = parse

            # parse is a single string list of multiple emails
        end

    def parse
    # binding.pry (@emails tests the parse argument of a string of emails is being passed in)
        
        # video on split & strip: https://www.youtube.com/watch?v=rShcBAWFR5M 
            # .gsub(/,/,"") Explanation: Removes all the commas from the single string list of emails passed in
            # var is still a single string but now all the commas are removed
            var = @emails.gsub(/,/,"")
            
    # binding.pry (tests what's going on with: var = @emails.gsub(/,/,""))

            # .split(" ") Explanation: turns the single string list of emails into an array of multiple individual strings of emails
            email_strings = var.split(" ")           
            
            # var.split(//) Explanation: turns the single string list of emails into an array of individual character strings plus space strings

    # binding.pry (tests what's going on with: var.split(" "))
               
       # @emails.split(" ")
       # the_string.gsub(/,/,"")

            email_strings.uniq



    end


end



student_emails = EmailAddressParser.new("me@yeah.com, you@hey.com, we@this.com, you@hey.com")

student_emails