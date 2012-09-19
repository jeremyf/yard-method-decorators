def init
  super
  sections.last.place(:method_decorators).after(:method_signature)
end
