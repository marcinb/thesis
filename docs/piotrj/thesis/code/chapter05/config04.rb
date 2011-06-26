Admnister::Config.configure do
  model Post do
    association_display :title
  end

  model Category do
    association_display do
      name.truncate[0..10]
    end
  end
end