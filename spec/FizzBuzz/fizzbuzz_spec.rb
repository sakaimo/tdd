require 'spec_helper'

describe "FizzBuzzクラス" do

  before do
    @fizzbuzz = FizzBuzz.new
  end

  describe "sort_numberメソッド" do
    context "3の倍数と5の倍数以外" do
      it "1を与えたら1を返す" do
        expect(@fizzbuzz.sort_number(1)).to eq 1
      end

      it "4を与えたら4を返す" do
        expect(@fizzbuzz.sort_number(4)).to eq 4
      end
    end

    context "3の倍数" do
      it "3を与えたら'Fizz'を返す" do
        expect(@fizzbuzz.sort_number(3)).to eq "Fizz"
      end

      it "6を与えたら'Fizz'を返す" do
        expect(@fizzbuzz.sort_number(6)).to eq "Fizz"
      end
    end

    context "5の倍数" do
      it "5を与えたら'Buzz'を返す" do
        expect(@fizzbuzz.sort_number(5)).to eq "Buzz"
      end

      it "10を与えたら'Buzz'を返す" do
        expect(@fizzbuzz.sort_number(10)).to eq "Buzz"
      end
    end

    context "3でも5でも割り切れる整数" do
      it "15を与えたら'FizzBuzz'を返す" do
        expect(@fizzbuzz.sort_number(15)).to eq "FizzBuzz"
      end

      it "30を与えたら'FizzBuzz'を返す" do
        expect(@fizzbuzz.sort_number(30)).to eq "FizzBuzz"
      end
    end
  end

  describe "valid?メソッド" do
    context "正の整数" do
      it "文字列'1'を与えたらtrueを返す" do
        expect(@fizzbuzz.valid?("1")).to be_truthy
      end
    end

    context "nil" do
      it "nilを与えたらfalseを返す" do
        expect(@fizzbuzz.valid?(nil)).to be_falsey
      end
    end

    context "ゼロ" do
      it "文字列'0'を与えたらfalseを返す" do
        expect(@fizzbuzz.valid?("0")).to be_falsey
      end
    end

    context "正の小数" do
      it "文字列'1.1'を与えたらfalseを返す" do
        expect(@fizzbuzz.valid?("1.1")).to be_falsey
      end
    end

    context "負の整数" do
      it "文字列'-1'を与えたらfalseを返す" do
        expect(@fizzbuzz.valid?("-1")).to be_falsey
      end
    end

    context "負の小数" do
      it "文字列'-1.1'を与えたらfalseを返す" do
        expect(@fizzbuzz.valid?("-1.1")).to be_falsey
      end
    end

    context "文字列" do
      it "文字列'あいうえお'を与えたらfalseを返す" do
        expect(@fizzbuzz.valid?("あいうえお")).to be_falsey
      end
    end
  end
end
