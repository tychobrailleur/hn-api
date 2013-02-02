require 'spec_helper'

describe HnApi::Client do
  subject { HnApi::Client.new } 

  it "returns the latest HN posts" do
    stub_request(:get, HnApi::Client::URI + "page").to_return(body: fixture("page.json"), :headers => { content_type: "application/json; charset=utf-8" })
    expect(subject.latest.items.first.title).to eq "The stupid cookie law is dead at last"
  end
end
