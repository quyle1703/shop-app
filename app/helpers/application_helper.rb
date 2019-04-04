module ApplicationHelper
  def flash_class(key)
    case key
      when "notice" then "alert alert-info"
      when "alert" then "alert alert-danger"
      when "success" then "alert alert-success"
    end
  end

  def application_name
    "Travis Store"
  end

  def product_image(product, size=nil)
    if size == nil
      ActionController::Base.helpers.image_tag(product.image.thumb.url || "default_product.jpg")
    else
      ActionController::Base.helpers.image_tag(product.image.url || "default_product.jpg")
    end
  end
  
  def user_image(profile)
    ActionController::Base.helpers.image_tag(profile.avatar.thumb.url || "default_user.jpg")
  end
end

