require 'rails_helper'

RSpec.describe "coments/index", type: :view do
  before(:each) do
    assign(:coments, [
      Coment.create!(
        :user_name => "User Name",
        :body => "MyText",
        :idea_id => 1
      ),
      Coment.create!(
        :user_name => "User Name",
        :body => "MyText",
        :idea_id => 1
      )
    ])
  end

  it "renders a list of coments" do
    render
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
