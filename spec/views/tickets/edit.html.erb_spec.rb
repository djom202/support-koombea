require 'spec_helper'

describe "tickets/edit" do

  include Devise::TestHelpers

  before(:each) do
    @ticket = FactoryGirl.create(:ticket)
    @clients = User.where(role: "client")
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  it "renders the edit ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path(@ticket), :method => "post" do
      assert_select "input#ticket_subject", :name => "ticket[subject]"
      assert_select "textarea#ticket_description", :name => "ticket[description]"
    end
  end
end
