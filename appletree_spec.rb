require_relative 'appletree'
RSpec.describe Appletree do
  before(:each) do
    @tree1 = Appletree.new 
    @tree2 = Appletree.new 
    3.times do 
      @tree2.year_gone_by
    end 
    @tree3 = Appletree.new 
    6.times do 
      @tree3.year_gone_by
    end 
    @tree4 = Appletree.new 
    12.times do 
      @tree4.year_gone_by
    end 
  end 

  it "has a getter and setter for age attribute" do 
    @tree1.age = 10 
    expect(@tree1.age).to eq(10)
    expect(@tree2.age).to eq(3)
  end 

  it "only has a getter for height" do 
    expect{ @tree1.height = 100 }.to raise_error(NoMethodError)
    expect(@tree1.height).to eq(10)
    puts @tree2.height
    puts @tree3.height
    puts @tree4.height
  end 

  it "only has a getter for apple count" do 
    expect{ @tree1.count = 100 }.to raise_error(NoMethodError)
    expect(@tree1.count).to eq(0)
    expect(@tree3.count).to eq(6)
    expect(@tree4.count).to eq(16)
  end 

  it "adds apple count by two for each year, except below three and over ten" do 
    expect(@tree1.count).to eq(0)
    expect(@tree3.count).to eq(6)
    expect(@tree4.count).to eq(16)
    @tree3.year_gone_by
    expect(@tree3.count).to eq(8)
  end 
  
  it "can pick all the apples of a tree" do 
    @tree3.pick_apples 
    expect(@tree3.count).to eq(0)
  end 
end