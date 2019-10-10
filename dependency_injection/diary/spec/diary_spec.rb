require 'diary'

describe Diary do

  it 'can add a diary entry' do
    entry = Entry.new('Entry 1', 'This is my first entry')
    subject.add(entry)
    diary_entry = subject.entries[0]
    expect(subject.entries).to include(diary_entry)
  end

  it 'list the titles' do
    entry = Entry.new('Entry 1', 'This is my first entry')
    subject.add(entry)

    expect(subject.index).to eq('Entry 1')
  end
end

describe Entry do
  subject { described_class.new('Entry 1', 'This is my first entry') }

  it 'can have a title' do
    expect(subject.title).to eq('Entry 1')
  end

  it 'can have a body' do
    expect(subject.body).to eq('This is my first entry')
  end
end
