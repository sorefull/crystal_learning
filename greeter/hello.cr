module Greeter
  class Hello
    @@hello = "Hello "

    def initialize(@hello : String)
      @hello = @hello + ' '
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
  end
end
