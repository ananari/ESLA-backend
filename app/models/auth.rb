class Auth < ApplicationRecord

  def self.ips_for(user_id)
    auths = Auth.select{|auth| auth.user_id == user.id}
    ips = auths.map{|auth| auth.ip}
    ips.uniq
  end
end
