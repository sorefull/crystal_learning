module Greeter
  class Hello
    @@hello = "Hello "

    def initialize(@hello : String)
      @hello = Hello.compact(@hello)
      @hello += ' '
    end

    def self.world
      puts @@hello + "world"
    end

    def self.greet(name)
      puts @@hello + name.to_s
    end

    def greet(name)
      puts @hello + name.to_s
    end

    def world
      puts @hello + "world"
    end

    protected def self.compact(string) : String
      if string[-1] == " "
        return Hello.compact(string[0..-2])
      else
        return string
      end
    end
  end
end
