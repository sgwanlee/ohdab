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

require 'spec_helper'

describe Question do

	before do
		@question = Question.new(year: 2012, exam: 3, subject: 1, number: 1, answer: 1, explanation: "TEST", img: "2012_03_01_01.gif")
	end

	subject { @question }
	
	it { should respond_to(:year) }
	it { should respond_to(:exam) }
	it { should respond_to(:subject) }
	it { should respond_to(:img) }
	it { should respond_to(:number) }
	it { should respond_to(:answer) }
	it { should respond_to(:explanation) }

end
