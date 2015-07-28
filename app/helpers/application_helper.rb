module ApplicationHelper

  def url_to_image_name(screen)
    asset_url screen["url"].slice(/:.*/).gsub(/[^a-zA-Z0-9]/, "") + "-clipped.png"
  end

  def command_take_picture(screen)
    "webkit2png " + screen["url"] + " --scale=1.0 --clipped --clipwidth=640 --clipheight=480"
  end
end
