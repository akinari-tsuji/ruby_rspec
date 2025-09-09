RSpec.describe ClosedInterval do
  let(:lower_endpoint) { nil }
  let(:upper_endpoint) { nil }
  let(:closed_interval) { ClosedInterval.new(lower_endpoint, upper_endpoint) }
  describe "閉区間に含むか判定する関数" do
    context "正常系：閉区間に値を含む" do
      context "[3, 7]の区間の時に" do
        let(:lower_endpoint) { 3 }
        let(:upper_endpoint) { 7 }

        it "5を渡したらTrueを返すこと" do
          expect(closed_interval.include?(5)).to eq true
        end

        it "7を渡したらTrueを返すこと" do
          expect(closed_interval.include?(7)).to eq true
        end

        it "3を渡したらTrueを返すこと" do
          expect(closed_interval.include?(3)).to eq true
        end
      end

      context "[1, 5]の区間の時に" do
        let(:lower_endpoint) { 1 }
        let(:upper_endpoint) { 5 }

        it "2を渡したらTrueを返すこと" do
          expect(closed_interval.include?(2)).to eq true
        end

        it "1を渡したらTrueを返すこと" do
          expect(closed_interval.include?(1)).to eq true
        end

        it "5を渡したらTrueを返すこと" do
          expect(closed_interval.include?(5)).to eq true
        end
      end
    end

    context "異常系：閉区間に値を含まない" do
      context "[3, 7]の区間の時に" do
        let(:lower_endpoint) { 3 }
        let(:upper_endpoint) { 7 }

        it "8を渡したらFalseを返すこと" do
          expect(closed_interval.include?(8)).to eq false
        end

        it "2を渡したらFalseを返すこと" do
          expect(closed_interval.include?(2)).to eq false
        end

        it "10を渡したらFalseを返すこと" do
          expect(closed_interval.include?(10)).to eq false
        end

        it "1を渡したらFalseを返すこと" do
          expect(closed_interval.include?(1)).to eq false
        end
      end

      context "[1, 5]の区間の時に" do
        let(:lower_endpoint) { 1 }
        let(:upper_endpoint) { 5 }

        it "0を渡したらFalseを返すこと" do
          expect(closed_interval.include?(0)).to eq false
        end

        it "6を渡したらFalseを返すこと" do
          expect(closed_interval.include?(6)).to eq false
        end

        it "-2を渡したらFalseを返すこと" do
          expect(closed_interval.include?(-2)).to eq false
        end

        it "8を渡したらFalseを返すこと" do
          expect(closed_interval.include?(8)).to eq false
        end
      end
    end
  end

  describe "整数閉区間の文字列表記を返す関数" do
    it "区間が[3, 7]の時に'[3,7]を返すこと" do
      let(:lower_endpoint) { 3 }
      let(:upper_endpoint) { 7 }

      expect(closed_interval.to_s).to eq "[3,7]"
    end
  end
end