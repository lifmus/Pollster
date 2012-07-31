require 'spec_helper'

describe "Polls" do
  describe "GET /polls/new" do
    it "routes correctly" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_poll_path
      response.status.should be(200)
    end
  end

  describe "#create_slug"do
    before(:each) do
      @poll = Poll.new
      @poll.create_slug
    end

    it "creates a slug" do
      @poll.create_slug.should be
    end

    it "creates a slug that consists of 7 characters" do
      @poll.slug.length.should == 7
    end

    it "creates a slug that only contains letters" do
      @poll.slug.should match /^[a-zA-Z]+$/
    end


  end

end
