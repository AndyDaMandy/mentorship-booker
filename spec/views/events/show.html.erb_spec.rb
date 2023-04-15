require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    assign(:event, Event.create!(
      mentor: nil,
      mentee: nil,
      length: 2,
      note: "MyText",
      location: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
