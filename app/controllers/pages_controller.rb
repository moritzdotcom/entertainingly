class PagesController < ApplicationController
  def home
    visitor = Visitor.find_by_ip_address(request.remote_ip)
    if visitor.nil?
      Visitor.create(ip_address: request.remote_ip, user_agent: request.user_agent)
    else
      visitor.count += 1;
      visitor.save
    end
  end

  def about_us
  end

  def facebook_privacy
  end

  def admin_dashboard
  end
end
