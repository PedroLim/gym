class Training
	include Mongoid::Document
	include Mongoid::Timestamps

	field :name, type: Symbol

	embeds_many :exercises_training, class_name: 'ExerciseTraining'
end
