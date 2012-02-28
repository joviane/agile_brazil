# encoding: UTF-8
class Conference < ActiveRecord::Base
  has_many :tracks
  
  def self.current
    @current_conference ||= Conference.order('year desc').first
  end

  def to_param
    year.to_s
  end
end
