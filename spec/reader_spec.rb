require './lib/reader'

RSpec.describe 'Reader' do
  ARGV = ['braille.txt', 'foxjump.txt']
  night_reader = Reader.new(ARGV[0], ARGV[1])

  it 'outputs a message to CLI' do
    expect(night_reader.output).not_to eq ''
  end

  it 'reads the number of characters in the input file' do
    expect(night_reader.read_message.length).to eq 43 * 6 + 6
  end

  it 'breaks message into individual lines' do
    expect(night_reader.line_breaker.length).to eq 6
  end

  it 'breaks lines into individual character pieces' do
    expect(night_reader.char_breaker[0][0]).to eq ".0"
  end
end