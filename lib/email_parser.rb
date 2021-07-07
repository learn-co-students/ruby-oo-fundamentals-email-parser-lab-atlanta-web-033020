# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        split_emails = []
        split_emails = @emails.split(" ")
        split_emails.each do |email|
            email.delete!(",")
        end
        split_emails.uniq()
        #@emails.split(/W+/)
    end

end
