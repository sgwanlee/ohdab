# encoding: utf-8

# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  year        :integer
#  exam        :integer
#  subject     :integer
#  number      :integer
#  answer      :integer
#  explanation :string(255)
#  img         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Question < ActiveRecord::Base
  attr_accessible :answer, :exam, :explanation, :number, :subject, :year, :img

  def info
  	"#{year}연_#{exam}_#{subject}_#{number}"
  end
end
