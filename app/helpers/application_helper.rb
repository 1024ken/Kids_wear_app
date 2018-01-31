module ApplicationHelper

  # flashメッセージのヘルパー
  def flash_message(message, klass)
    content_tag(:div, class: "alert alert-#{klass}") do
      concat content_tag(:a, 'x', class: 'close', data: { dismiss: 'alert' })
      concat raw(message)
    end
  end
end
