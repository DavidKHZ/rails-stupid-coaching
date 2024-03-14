require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anyhting:"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "asking question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "going to work yields a nice response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
    take_screenshot
  end

  test "linkback to ask question on answer page" do
    visit answer_url
    click_link('Ask a new question')
    assert_selector "p", text: "Ask your coach anyhting:"
  end
end
