class YARD::MethodDecorators::PlusHander < YARD::Handlers::Ruby::Base
  handles :unary
  namespace_only

  process do
    # method_decorators_tag = YARD::Tags::Tag.new(:method_decorators, "", [])

    parent_statement = statement.parent
    index_of_statement = parent_statement.children.find_index(statement)
    decorated_method_statement = parent_statement.
      children[index_of_statement..-1].detect {|child| child.type != :unary }
    decorated_method_name = decorated_method_statement.jump(:ident).source
    object = YARD::CodeObjects::MethodObject.new(namespace, decorated_method_name)
    object[:method_decorators] ||= []
    object[:method_decorators] << {
      name: statement.jump(:const).source,
      file: statement.file,
      line: statement.line,
      source: statement.last.last.source.chomp
    }
  end
end
