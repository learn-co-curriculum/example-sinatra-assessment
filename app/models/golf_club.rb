class GolfClub < ActiveRecord::Base
  belongs_to :golf_bag

  def self.valid_params?(params)
    return !params[:name].empty? && !params[:manufacturer].empty?
  end
end
