require 'spec_helper'

describe FizzBuzz do
  it "message return hello" do
    expect(FizzBuzz.new.message).to eq "hello"
  end
end
