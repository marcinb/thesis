def for(model_name)
  klass = model_name.is_a?(Class) ? model_name : lookup(model_name)
  Model.new(klass)
end
