def initialize(&block)
  @model_configs = {}
  self.instance_eval &block
end
