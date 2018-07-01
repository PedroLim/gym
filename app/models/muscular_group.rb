class MuscularGroup
	include Mongoid::Document
	include Mongoid::Timestamps

	field :name, type: String

	embeds_many :exercises
end
