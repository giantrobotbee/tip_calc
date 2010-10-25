require 'lib/bill'

describe Bill do
  let(:bill) { Bill.new(20) }

  it "should have a cost" do
    bill.cost.should eq(20)
  end

  it "should have a tip rate" do
    bill.tip_rate = 15
    bill.tip_rate.should eq(15)
  end

  it "calculates the tip" do
    bill.tip_rate = 15
    bill.calc_tip
    bill.tip.should eq(3)
  end
end
