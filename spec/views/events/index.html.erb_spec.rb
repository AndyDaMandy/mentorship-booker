require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        mentor: nil,
        mentee: nil,
        length: 2,
        note: "MyText",
        location: "MyText"
      ),
      Event.create!(
        mentor: nil,
        mentee: nil,
        length: 2,
        note: "MyText",
        location: "MyText"
      )
    ])
  end

  it "renders a list of events" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
