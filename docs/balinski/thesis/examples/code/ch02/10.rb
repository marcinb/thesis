describe CoolPartUsingMathsModule do
  it "should use result of math module computation when run method triggered" do
    maths = mock(MathsModule, :compute => 1337)
    obj = CoolPartUsingMathsModule.new(maths)
    obj.run
  end
end
