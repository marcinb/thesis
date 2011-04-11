require 'sports_table'

describe SportsTable do
  it "should properly join team names with 'vs.'" do
    table = SportsTable.new
    table.header('Chicago Bulls', 'Los Angeles Lakers').should == 'Chicago Bulls vs. Los Angeles Lakers'
  end
end
