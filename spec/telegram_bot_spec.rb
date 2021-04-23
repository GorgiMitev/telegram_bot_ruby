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

end