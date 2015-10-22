module NotesHelper
  def preview_or_default_image(media)
    if media.content_type.starts_with? 'image'
      media.thumb.url.to_s
    elsif media.content_type.starts_with? 'application'
      'thumb_doc.jpg'
    elsif media.content_type.starts_with? 'audio'
      'thumb_audio.jpg'
    else media.content_type.starts_with? 'video'
      'thumb_video.png'
    end
  end
end
