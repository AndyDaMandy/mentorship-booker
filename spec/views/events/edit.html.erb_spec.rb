require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  let(:event) {
    Event.create!(
      mentor: nil,
      mentee: nil,
      length: 1,
      note: "MyText",
      location: "MyText"
    )
  }

  before(:each) do
    assign(:event, event)
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(event), "post" do

      assert_select "input[name=?]", "event[mentor_id]"

      assert_select "input[name=?]", "event[mentee_id]"

      assert_select "input[name=?]", "event[length]"

      assert_select "textarea[name=?]", "event[note]"

      assert_select "textarea[name=?]", "event[location]"
    end
  end
end
