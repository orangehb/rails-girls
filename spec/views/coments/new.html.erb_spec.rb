require 'rails_helper'

RSpec.describe "coments/new", type: :view do
  before(:each) do
    assign(:coment, Coment.new(
      :user_name => "MyString",
      :body => "MyText",
      :idea_id => 1
    ))
  end

  it "renders new coment form" do
    render

    assert_select "form[action=?][method=?]", coments_path, "post" do

      assert_select "input#coment_user_name[name=?]", "coment[user_name]"

      assert_select "textarea#coment_body[name=?]", "coment[body]"

      assert_select "input#coment_idea_id[name=?]", "coment[idea_id]"
    end
  end
end
