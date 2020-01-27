require 'oystercard'

describe Oystercard do
  it "has a default balance of zero" do
    expect(subject.balance).to eq 0
  end
  it 'can #top_up the balance' do
    expect{ subject.top_up(5) }.to change{ subject.balance }.by 5
  end
end