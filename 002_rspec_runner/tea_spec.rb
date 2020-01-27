class Tea
  def flavor
    :earl_grey
  end
  def temperature
    210.0
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = '002_rspec_runner/exampl_tea.txt'
end

RSpec.describe Tea do
  let(:tea){Tea.new}
  it 'tasted like Earl Grey' do
    expect(tea.flavor).to be :earl_grey
  end
  it 'is hat' do
    expect(tea.temperature).to be > 200.0
  end
end