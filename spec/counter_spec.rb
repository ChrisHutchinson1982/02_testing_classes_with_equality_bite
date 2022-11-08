require 'counter'

RSpec.describe Counter do
  it "report empty counter" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
  it "add 3 to counter" do
    counter = Counter.new
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 3 so far."
  end
  it "add 3 then 4 to counter" do
    counter = Counter.new
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 3 so far."
    counter.add(4)
    result = counter.report
    expect(result).to eq "Counted to 7 so far."
  end
end