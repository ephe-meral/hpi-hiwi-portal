require 'spec_helper'

describe "job_offers/show" do
  before(:each) do
    @job_offer = assign(:job_offer, stub_model(JobOffer,
      :description => "Description",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/Title/)
  end
end
