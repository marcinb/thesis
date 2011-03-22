  ActiveRecord::Base.establish_connection(
    :adapter  => "postgresql",
    :host     => "localhost",
    :username => "database_user",
    :password => "passme",
    :database => "my_database"
  )

