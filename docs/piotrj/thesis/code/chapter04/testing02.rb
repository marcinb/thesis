describe A do
  describe :method_a do
    it "should return the value provided by method_b" do
      b = mock("B")
      b.stub(:method_b => "5")
      B.stub(:new => b)
      a.method_a.should == "5"
    end
  end
end