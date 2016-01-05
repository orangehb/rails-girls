require 'rails_helper'

RSpec.describe "coments/show", type: :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :user_name => "User Name",
      :body => "MyText",
      :idea_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
