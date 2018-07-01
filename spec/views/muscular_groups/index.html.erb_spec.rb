require 'rails_helper'

RSpec.describe "muscular_groups/index", type: :view do
  before(:each) do
    assign(:muscular_groups, [
      MuscularGroup.create!(
        :name => "Name"
      ),
      MuscularGroup.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of muscular_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
