class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :requests, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def http_protocol 
  if website.present?
    self.website = "http://#{self.website}" unless website[/\Ahttps?:\/\//]
  end
  end       
         
         
  def employee_name
    f_name + " " + l_name
  end
  
  def user_id
    id
  end

end