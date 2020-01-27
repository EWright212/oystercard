require 'oystercard'

describe Oystercard do
  it "has a default balance of zero" do
    expect(subject.balance).to eq 0
  end
  it 'can #top_up the balance' do
    expect{ subject.top_up(5) }.to change{ subject.balance }.by 5
  end
  it '#top up raises an error if above limit' do
    expect { subject.top_up(Oystercard::DEFAULT_MAXIMUM + 1) }. to raise_error("top up limit breached")
  end
end