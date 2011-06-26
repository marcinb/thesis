initializer "administer.initiailze_orm", :after => :finisher_hook do
  require File.expand_path("active_record", File.dirname(__FILE__))
end
