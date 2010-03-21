# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def show_flash
    [:notice, :error].collect do |key|
      content_tag(:div, content_tag(:p, flash[key]), :id => "flash", :class => "flash_#{key}") unless flash[key].blank?
    end.join
  end

  def flash_is_displayed
    flash[:notice] or flash[:error]
  end
end
