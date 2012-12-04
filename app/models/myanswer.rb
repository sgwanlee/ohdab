# == Schema Information
#
# Table name: myanswers
#
#  id         :integer          not null, primary key
#  answers    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Myanswer < ActiveRecord::Base
  attr_accessible :answers

  
end
