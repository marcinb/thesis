def all
  if @@models.empty?
    Rails.application.paths.app.models.paths.each do |models_path|
      Dir[File.expand_path("**/*.rb", models_path)].each do |path|
        model_name = path.split('/').last.gsub(/\.rb$/, '')
        @@models << Administer::Model.for(model_name)
      end
    end
  end
  @@models
end
