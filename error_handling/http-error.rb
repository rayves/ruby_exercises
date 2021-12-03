class HTTPError < StandardError
    attr_reader :status_code
    def initialize(message, status_code)
        super(message)
        @status_code = status_code
    end 
end

begin
    puts "Try to go to website"
    raise HTTPError.new("I'm a teapot", 418)
rescue => exception
    puts "Tried to access website"
    puts "Got #{exception.status_code} = #{exception.message}" #rescue being accessed
    
end