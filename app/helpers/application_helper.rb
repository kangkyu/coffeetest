module ApplicationHelper

  def url_to_image_name(screen)
    asset_url screen["url"].slice(/:.*/).gsub(/[^a-zA-Z0-9]/, "") + "-clipped.png"
  end

  # http://stackoverflow.com/questions/980855/inputting-a-default-image-in-case-the-src-arribute-of-an-html-img-is-not-valid

  def command_take_picture(screen)
    "webkit2png " + screen["url"] + " --scale=1.0 --clipped --clipwidth=640 --clipheight=480"
  end

  # http://www.paulhammond.org/webkit2png/
end
