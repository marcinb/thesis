Given /^following posts exists:$/ do |posts_table|
  posts_table.hashes.each do |attributes|
    Factory(:post, attributes)
  end
end
