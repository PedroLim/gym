class TrainingPlan
	include Mongoid::Document
	include Mongoid::Timestamps

	field :status, type: Symbol
	field :start_date, type: DateTime
	field :duration, type: Integer

	embeds_many :trainings, class_name: 'Training'
	embedded_in :user
end
