require 'note'

describe Note do
  let(:title){ double :"title" }
  let(:body){ double :"body" }

  it 'notes title works' do
    note = Note.new(title, body)

    expect(note.title).to eq(title)
  end

  it 'notes body works' do
    note = Note.new(title, body)

    expect(note.body).to eq(body)
  end

  it 'displays in correct format' do
    formatter = double :formatter, format: "Title: #{title}\n#{body}"
    note = Note.new(title, body, formatter)

    expect(note.display).to eq("Title: #{title}\n#{body}")
  end
end
