class ExerciseTraining
	include Mongoid::Document
	include Mongoid::Timestamps

	field :series, type: Integer
	field :repetition, type: Integer
	field :weight, type: Integer
	field :order, type: Integer

	embeds_one :exercise
	embedded_in :training
end
