module ApplicationHelper
  def title_helper(page_title, default = 'Discourse中文网')
    if page_title
      "#{default} - #{page_title}"
    else
      default
    end
  end

  def video_tag(path, options)
    if options[:size]
      width = 1
    else

    end
<<ss
    <video width="420" height="200" poster="../video/replyread.png" autoplay="" loop="">
    <source src="../video/reply_read_retina.mp4" type="video/mp4" media="(min-device-pixel-ratio:1.5), (-webkit-min-device-pixel-ratio:1.5), (min--moz-device-pixel-ratio:1.5), (-o-min-device-pixel-ratio:1.5)">
    <source src="../video/reply_read_retina.ogg" type="video/ogg" media="(min-device-pixel-ratio:1.5), (-webkit-min-device-pixel-ratio:1.5), (min--moz-device-pixel-ratio:1.5), (-o-min-device-pixel-ratio:1.5)">
    <source src="../video/reply_read.mp4" type="video/mp4">
    <source src="../video/reply_read.ogg" type="video/ogg">
        Your browser does not support the video tag.
                                                    </video>
ss
  end
end
