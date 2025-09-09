RSpec.describe ClosedInterval do
  describe "上端点と下端点の大小関係について" do
    context "上端点が下端点より大きい閉区間" do
      it "[7, 3]の時、例外を発生させる" do
        expect do
          closed_interval = ClosedInterval(3, 7)
        end.to raise_error(StandardError)
      end
    end
  end

  describe "閉区間に含むか判定する関数" do
    let(:lower_endpoint) { nil }
    let(:upper_endpoint) { nil }
    let(:closed_interval) { ClosedInterval.new(lower_endpoint, upper_endpoint) }

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

      # context "[1, 5]の区間の時に" do
      #   let(:lower_endpoint) { 1 }
      #   let(:upper_endpoint) { 5 }
      #
      #   it "2を渡したらTrueを返すこと" do
      #     expect(closed_interval.include?(2)).to eq true
      #   end
      #
      #   it "1を渡したらTrueを返すこと" do
      #     expect(closed_interval.include?(1)).to eq true
      #   end
      #
      #   it "5を渡したらTrueを返すこと" do
      #     expect(closed_interval.include?(5)).to eq true
      #   end
      # end
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

      # context "[1, 5]の区間の時に" do
      #   let(:lower_endpoint) { 1 }
      #   let(:upper_endpoint) { 5 }
      #
      #   it "0を渡したらFalseを返すこと" do
      #     expect(closed_interval.include?(0)).to eq false
      #   end
      #
      #   it "6を渡したらFalseを返すこと" do
      #     expect(closed_interval.include?(6)).to eq false
      #   end
      #
      #   it "-2を渡したらFalseを返すこと" do
      #     expect(closed_interval.include?(-2)).to eq false
      #   end
      #
      #   it "8を渡したらFalseを返すこと" do
      #     expect(closed_interval.include?(8)).to eq false
      #   end
      # end
    end
  end

  describe "整数閉区間の文字列表記を返す関数" do
    it "区間が[3, 7]の時に'[3,7]'を返すこと" do
      closed_interval = ClosedInterval.new(3, 7)
      expect(closed_interval.to_s).to eq "[3,7]"
    end

    it "区間が[1, 5]の時に'[1,5]'を返すこと" do
      closed_interval = ClosedInterval.new(1, 5)
      expect(closed_interval.to_s).to eq "[1,5]"
    end
  end
end