require "./greeter/hello"

Greeter::Hello.world
Greeter::Hello.greet("Oleg")

hey = Greeter::Hello.new("Hey")
hey.world
hey.greet("Crystal")
