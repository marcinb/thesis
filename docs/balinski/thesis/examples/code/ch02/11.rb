describe CoolPartUsingMathsModule do
  it "should use result of math module computation when run method triggered" do
    maths = mock(MathsModule)
    obj = CoolPartUsingMathsModule.new(maths)
    maths.should_receive(:compute).and_return(1337)
    obj.run
  end
end