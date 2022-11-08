require "gratitudes"

RSpec.describe Gratitudes do
  it "Empty gratitudes array" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "One gratitude in array" do
    gratitudes = Gratitudes.new
    gratitudes.add("Makers")
    expect(gratitudes.format).to eq "Be grateful for: Makers"
  end

  it "Several gratitudes in array" do
    gratitudes = Gratitudes.new
    gratitudes.add("Makers")
    gratitudes.add("Tube strike")
    expect(gratitudes.format).to eq "Be grateful for: Makers, Tube strike"
  end
end