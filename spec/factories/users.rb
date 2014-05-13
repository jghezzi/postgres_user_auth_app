FactoryGirl.define do
	factory :user do |f|
		f.email "test@email.com"
		f.password_digest "dddd"
	end
end