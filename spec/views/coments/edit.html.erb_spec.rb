require 'rails_helper'

RSpec.describe "coments/edit", type: :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :user_name => "MyString",
      :body => "MyText",
      :idea_id => 1
    ))
  end

  it "renders the edit coment form" do
    render

    assert_select "form[action=?][method=?]", coment_path(@coment), "post" do

      assert_select "input#coment_user_name[name=?]", "coment[user_name]"

      assert_select "textarea#coment_body[name=?]", "coment[body]"

      assert_select "input#coment_idea_id[name=?]", "coment[idea_id]"
    end
  end
end
