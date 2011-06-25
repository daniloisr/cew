class User < ActiveRecord::Base
  before_save :encrypt

  private
  def encrypt
    self.pass = Digest::MD5.hexdigest(self.pass)
  end
end
