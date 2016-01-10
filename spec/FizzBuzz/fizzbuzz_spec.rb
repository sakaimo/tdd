require 'spec_helper'

describe "fizzbuzzメソッド" do
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
end

describe "valid?メソッド" do
  describe "正の整数" do
    it "文字列'1'を与えたらtrueを返す" do
      expect(FizzBuzz.valid?("1")).to be_truthy
    end
  end
  describe "nil" do
    it "nilを与えたらfalseを返す" do
      expect(FizzBuzz.valid?(nil)).to be_falsey
    end
  end
  describe "ゼロ" do
    it "文字列'0'を与えたらfalseを返す" do
      expect(FizzBuzz.valid?("0")).to be_falsey
    end
  end
  describe "正の小数" do
    it "文字列'1.1'を与えたらfalseを返す" do
      expect(FizzBuzz.valid?("1.1")).to be_falsey
    end
  end

  describe "負の整数" do
    it "文字列'-1'を与えたらfalseを返す" do
      expect(FizzBuzz.valid?("-1")).to be_falsey
    end
  end

  describe "負の小数" do
    it "文字列'-1.1'を与えたらfalseを返す" do
      expect(FizzBuzz.valid?("-1.1")).to be_falsey
    end
  end

  describe "文字列" do
    it "文字列'あいうえお'を与えたらfalseを返す" do
      expect(FizzBuzz.valid?("あいうえお")).to be_falsey
    end
  end
end

describe "test" do
  FizzBuzz
end
