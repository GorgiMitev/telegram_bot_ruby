require_relative '../lib/motivation.rb'
require_relative '../lib/jokes.rb'

RSpec.describe Motivation do
    describe '#make_request' do
      let(:request) { Motivation.new }
      let(:request_json) { request.make_request }
  
      it 'should return json response when the request is sucessful' do
        expect(request_json.class).to eql(Array)
      end
    end

    describe '#random_quote' do
      let(:random) { Motivation.new }
      let(:request_random) { random.random_quote }
  
      it 'should return an Hash' do
        expect(request_random.class).to eql(Hash)
      end
  
      it 'should return a key and a value' do
        expect(request_random.length).to eql(2)
      end
    end
  end
