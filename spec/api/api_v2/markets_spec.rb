require 'spec_helper'

describe APIv2::Markets do

  describe "GET /api/v2/markets" do
    it "should all available markets" do
      get '/api/v2/markets'
      response.should be_success
      response.body.should == '[{"id":"btccny","name":"BTC/CNY"},{"id":"btceur","name":"BTC/EUR"}]'
    end
  end

end
