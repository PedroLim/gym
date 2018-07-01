class Exercise
	include Mongoid::Document
	include Mongoid::Timestamps

	field :name, type: String

	embedded_in :muscular_group
	embedded_in :exercise_training
end
