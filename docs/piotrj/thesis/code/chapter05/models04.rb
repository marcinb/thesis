def all
  if @@models.empty?
    Dir[Rails.root.join('app/models/**/*.rb')].each do |path|
      model_name = path.split('/').last.gsub(/\.rb$/, '')	 	
      @@models << Administer::Model.for(model_name)
    end
  end
  @@models
end
