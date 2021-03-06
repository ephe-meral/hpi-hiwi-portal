require 'spec_helper'

describe "job_offers/edit" do
  before(:each) do
    @job_offer = assign(:job_offer, stub_model(JobOffer,
      :description => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit job_offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_offer_path(@job_offer), "post" do
      assert_select "input#job_offer_description[name=?]", "job_offer[description]"
      assert_select "input#job_offer_title[name=?]", "job_offer[title]"
    end
  end
end
