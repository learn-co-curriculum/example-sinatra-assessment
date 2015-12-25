class GolfBag < ActiveRecord::Base
  has_many :golf_clubs
  belongs_to :user

  def self.valid_params?(params)
    return !params[:name].empty? && !params[:capacity].empty?
  end
end
