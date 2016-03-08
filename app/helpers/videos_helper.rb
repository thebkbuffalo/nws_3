module VideosHelper
  def embed(url)
    # if url contains youtube run
    if url.include?("youtube")
      youtube_id = url.split('=').last
      content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}", width: "600px", height: "300px")
    # else contains vimeo run
    else url.include?("vimeo")
      vimeo_id = url.split('/').last
      content_tag(:iframe, nil, src: "https://player.vimeo.com/video/#{vimeo_id}", width: "600px", height: "300px")
    end
  end
end
