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

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
