module ApplicationHelper

  def login_helper (style = '')
    if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
     else 
      button_to "Logout", destroy_user_session_path, class: 'nav-links', method: :delete
    end 
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
      if alert
       alert_generator alert
    end
  end

  def alert_generator (msg)
    js add_gritter(msg, title: "Rec'd", sticky: false, time: 1000)
  end
end
