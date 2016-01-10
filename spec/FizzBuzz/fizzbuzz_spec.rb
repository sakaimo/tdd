require 'spec_helper'

describe FizzBuzz do
  # it "受け取った整数まで、1から1ずつ増やして出力する" do
  #   expect(FizzBuzz.new.message).to eq "hello"
  # end

  describe "3の倍数と5の倍数以外" do
    it "1を与えたら1を返す" do
      expect(FizzBuzz.fizzbuzz(1)).to eq 1
    end

    it "4を与えたら4を返す" do
      expect(FizzBuzz.fizzbuzz(4)).to eq 4
    end
  end

  describe "3の倍数" do
    it "3を与えたら'Fizz'を返す" do
      expect(FizzBuzz.fizzbuzz(3)).to eq "Fizz"
    end
    it "6を与えたら'Fizz'を返す" do
      expect(FizzBuzz.fizzbuzz(6)).to eq "Fizz"
    end
  end

  describe "5の倍数" do
    it "5を与えたら'Buzz'を返す" do
      expect(FizzBuzz.fizzbuzz(5)).to eq "Buzz"
    end

    it "10を与えたら'Buzz'を返す" do
      expect(FizzBuzz.fizzbuzz(10)).to eq "Buzz"
    end
  end

  describe "3でも5でも割り切れる" do
    it "15を与えたら'FizzBuzz'を返す" do
      expect(FizzBuzz.fizzbuzz(15)).to eq "FizzBuzz"
    end
    it "30を与えたら'FizzBuzz'を返す" do
      expect(FizzBuzz.fizzbuzz(30)).to eq "FizzBuzz"
    end
  end

  #describe "異常系" do
  # it "0を与えたら何もしない" do
  # end
  #
  #   it "マイナスの整数を与えたら何もしない" do
  #   end
  #
  #   it "整数以外を受け取ったらなにもしない" do
  #   end
  # end

end
