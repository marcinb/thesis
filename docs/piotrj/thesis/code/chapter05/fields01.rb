[{:name => :title, :type => :text_field},
 {:name => :body, :type => :text_area},
 {:name => :publish_at, :type => :date},
 {:name => :category, :type => :belongs_to, :association_class => :category, :foreign_key => :category_id}]