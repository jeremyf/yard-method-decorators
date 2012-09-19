module YARD::MethodDecorators
  # Your code goes here...
end

YARD::Templates::Engine.register_template_path(
  File.dirname(__FILE__) + '/../templates'
)

require File.join(File.dirname(__FILE__), 'yard-method-decorators', 'handler')
require File.join(File.dirname(__FILE__), 'yard-method-decorators', 'version')

