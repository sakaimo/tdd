require 'spec_helper'

describe "FizzBuzz" do

  before do
    @fizzbuzz = FizzBuzz.new
  end

  describe "引数が妥当かどうかのテスト" do
    describe "nに正の整数が与えられた場合" do
      it "文字列'1'を与えたらtrueを返す" do
        expect(@fizzbuzz.argument_valid?(["1"])).to be_truthy
      end
    end

    describe "nに正の整数以外が与えられた場合" do
      context "ゼロ" do
        it "文字列'0'を与えたらfalseを返す" do
          expect(@fizzbuzz.argument_valid?(["0"])).to be_falsey
        end
      end

      context "正の小数" do
        it "文字列'1.1'を与えたらfalseを返す" do
          expect(@fizzbuzz.argument_valid?(["1.1"])).to be_falsey
        end
      end

      context "負の整数" do
        it "文字列'-1'を与えたらfalseを返す" do
          expect(@fizzbuzz.argument_valid?(["-1"])).to be_falsey
        end
      end

      context "負の小数" do
        it "文字列'-1.1'を与えたらfalseを返す" do
          expect(@fizzbuzz.argument_valid?(["-1.1"])).to be_falsey
        end
      end

      context "文字列" do
        it "文字列'あいうえお'を与えたらfalseを返す" do
          expect(@fizzbuzz.argument_valid?(["あいうえお"])).to be_falsey
        end
      end
    end

    describe "引数が与えられなかった場合" do
      it "空配列を与えたらfalseを返す" do
        expect(@fizzbuzz.argument_valid?([])).to be_falsey
      end
    end

    describe "引数が複数与えられた場合" do
      it "1と2を引数に与えるとfalseを返す" do
        expect(@fizzbuzz.argument_valid?(["1","2"])).to be_falsey
      end
    end
  end

  describe "整数のFizzBuzz判断" do
    context "3の倍数でも5の倍数でもない数字" do
      it "1を与えたら1を返す" do
        expect(@fizzbuzz.judged_number(1)).to eq 1
      end

      it "4を与えたら4を返す" do
        expect(@fizzbuzz.judged_number(4)).to eq 4
      end
    end

    context "3の倍数" do
      it "3を与えたら'Fizz'を返す" do
        expect(@fizzbuzz.judged_number(3)).to eq "Fizz"
      end

      it "6を与えたら'Fizz'を返す" do
        expect(@fizzbuzz.judged_number(6)).to eq "Fizz"
      end
    end

    context "5の倍数" do
      it "5を与えたら'Buzz'を返す" do
        expect(@fizzbuzz.judged_number(5)).to eq "Buzz"
      end

      it "10を与えたら'Buzz'を返す" do
        expect(@fizzbuzz.judged_number(10)).to eq "Buzz"
      end
    end

    context "3でも5でも割り切れる整数" do
      it "15を与えたら'FizzBuzz'を返す" do
        expect(@fizzbuzz.judged_number(15)).to eq "FizzBuzz"
      end

      it "30を与えたら'FizzBuzz'を返す" do
        expect(@fizzbuzz.judged_number(30)).to eq "FizzBuzz"
      end
    end
  end
end
