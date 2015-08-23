module ApplicationHelper

  def resource_name
    :cooker
  end

  def resource
    @cooker ||= Cooker.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:cooker]
  end

  def remaining meal
    meal.participants_max - meal.participants_now
  end

  def resource_class
    devise_mapping.to
  end

  def truncate_view_more txt, opts={  }
    opts[:link_text] ||= 'ver mais'
    max = opts[:max].to_i || 50
    klass = SecureRandom.hex()

    if txt.length > max
      html = txt[0..max] + "<span class='#{klass}'>... </span>"
      html << content_tag(:span, txt[(max + 1)..txt.length], class: "#{klass}", style: "display: none;" )
      html << link_to(opts[:link_text], "javascript:void(0)", onclick: "$('.#{klass}').toggle();", class: "view-more")
    else
      html = txt
    end

    html.html_safe
  end
end
