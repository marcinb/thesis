Administer::Config.set_display_name Category do
  name.truncate(10)
end

Administer::Config.set_display_name(Post, :title)
Administer::Config.set_smth_else(Post, :smth_else