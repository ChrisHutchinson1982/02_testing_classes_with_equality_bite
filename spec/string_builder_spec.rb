require 'string_builder'

RSpec.describe StringBuilder do
  it "empty string builder" do
    string = StringBuilder.new
    expect(string.size).to eq 0
    expect(string.output).to eq ""
  end

  it "add 'a' to the string" do
    string = StringBuilder.new
    string.add("a")
    expect(string.size).to eq 1
    expect(string.output).to eq "a"
  end

  it "add 'a' and then 'b' to the string" do
    string = StringBuilder.new
    string.add("a")
    expect(string.size).to eq 1
    expect(string.output).to eq "a"
    string.add("b")
    expect(string.size).to eq 2
    expect(string.output).to eq "ab"
  end
end
