# Run `yardoc -p templates_custom -e lib/yard-method-decorators.rb example/example_code.rb`
require 'method_decorators'

class HelloWorld
  extend MethodDecorators
  +Precondition.new {|p1, p2| p1.is_a?(Integer) && p2.is_a?(Integer)}
  +Memoize
  def adder(value1,value2)
    value1 + value2
  end
end