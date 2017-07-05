module ApplicationHelper
  def login_helper style
   if current_user.is_a?(GuestUser)
     (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else 
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
   end 
  end
  
 def source_helper(layout_name)
  if session[:source] 
    greet = "Thanks for visiting from #{session[:source]} ya weirdo. 
    You are on the #{layout_name} layout."
   content_tag(:p, greet, class: "source_greet" )
  end 
 end

  def copyright_generator
   @copyright = JemViewTool::Renderer.copyright 'Jeremy Saysanasy', 'All rights reserved'
  end
end
