namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		20.times do |n|
			year = 2012
			exam = 3
			subject = 1
			# img = "#{year}_#{exam}_#{subject}_#{n}.gif"
			img = "#{n+1}.png"
			number = n
			answer = 1
			explanation = Faker::Lorem.sentence(55)
			Question.create!(year: year, 
								exam: exam, 
								subject: subject,
								img: img,
								number: number,
								answer: answer,
								explanation: explanation)
		end
	end
end