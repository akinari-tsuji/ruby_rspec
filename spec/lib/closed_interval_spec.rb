RSpec.describe ClosedInterval do
  describe "閉区間に含むか判定する関数" do
    context "正常系" do
      it "[3, 7]の区間の時に、5を渡したらTrueを返すこと" do
        closed_interval = ClosedInterval.new()
        expect(closed_interval.include?(5)).to eq true
      end
    end
  end
end