Given /^no posts exist$/ do
  Post.destroy_all
end

Given /^following posts exists:$/ do |posts_table|
  posts_table.hashes.each do |attributes|
    Factory(:post, attributes)
  end
end
