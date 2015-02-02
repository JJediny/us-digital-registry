module Admin::AdminHelper
  def activity_feed_link(activity)
    if activity.trackable
      case activity.trackable_type
      when "User"
      	link_to activity.trackable.email, admin_user_path(activity.trackable)
      when "Outlet"
      	link_to activity.trackable.organization, admin_outlet_path(activity.trackable)
      when "MobileApp"
      	link_to activity.trackable.name, admin_mobile_app_path(activity.trackable)
      when "Gallery"
        link_to activity.trackable.name, admin_gallery_path(activity.trackable)
      end
    else
      "Deleted"
    end
  end
  def activity_feed_badge_item(activity)
    case activity.trackable_type
    when "User"
      "fa fa-user"
    when "Outlet"
      "fa fa-share-alt"
    when "MobileApp"
      "fa fa-mobile"  
    when "Gallery"
      "fa fa-mobile"  
    end
  end
  def activity_feed_action_name(activity)
  	t(activity.key).downcase
  end

  def activity_feed_owner(activity)
  	if activity.owner
  		link_to " #{activity.owner.email}".html_safe, admin_user_path(activity.owner)
    else
    	"System"
    end
  end

  def user_list_format(user)
    if user.first_name || user.last_name
      "#{user.first_name} #{user.last_name} - #{user.email}"
    else
      user.email
    end
  end
end
