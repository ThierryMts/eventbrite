class Event < ApplicationRecord
    has_many :event_attendee, :foreign_key => :attendee_event_id
    has_many :attendee, :through => :event_attendee, :source => :event_attendee
    belongs_to :creator, :class_name => "User"
end
