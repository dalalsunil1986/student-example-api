module SecuredByIp

  private
  
  def ip_address
    @ip_address ||= Ip.find_or_create_by(address: request.remote_ip)
  end
end