module ApplicationHelper
  def title_helper(page_title, default = 'Discourse中文网')
    if page_title
      "#{default} - #{page_title}"
    else
      default
    end
  end

  def video_tag(name, options)
    return unless options[:size]
    width, height = options[:size].split('x').map { |s| s.to_i }
    pixel_ratio = options[:pixel_ratio] || 1.5
    class_text = if options[:class] then "class='#{options[:class]}'" else '' end
    photo_name = name
    name = photo_name.split('.')[0]
    result = <<-END
      <video width="#{width}" height="#{height}" #{class_text} poster="/video/#{photo_name}" autoplay="" loop="">
        <source src="/video/#{name}_retina.mp4" type="video/mp4" media="(min-device-pixel-ratio:#{pixel_ratio}), (-webkit-min-device-pixel-ratio:#{pixel_ratio}), (min--moz-device-pixel-ratio:#{pixel_ratio}), (-o-min-device-pixel-ratio:#{pixel_ratio})">
        <source src="/video/#{name}_retina.ogg" type="video/ogg" media="(min-device-pixel-ratio:#{pixel_ratio}), (-webkit-min-device-pixel-ratio:#{pixel_ratio}), (min--moz-device-pixel-ratio:#{pixel_ratio}), (-o-min-device-pixel-ratio:#{pixel_ratio})">
        <source src="/video/#{name}.mp4" type="video/mp4">
        <source src="/video/#{name}.ogg" type="video/ogg">
        您的浏览器不支持视频标签。
      </video>
    END
    result.html_safe
  end
end
