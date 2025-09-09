RSpec.describe ClosedInterval do
  describe "閉区間に含むか判定する関数" do
    context "正常系" do
      let(:closed_interval) { ClosedInterval.new() }

      context "[3, 7]の区間の時に" do
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
    end

    context "異常系" do
      context "[3, 7]の区間の時に" do
        it "8を渡したらFalseを返すこと" do
          closed_interval = ClosedInterval.new()
          expect(closed_interval.include?(8)).to eq false
        end
      end
    end
  end
end