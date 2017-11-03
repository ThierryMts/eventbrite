class User < ApplicationRecord
    has_many :event_attendee, :foreign_key => :event_attendee_id
    has_many :attendee_event, :through => :event_attendee
    has_many :creator_events, :foreign_key => :creator_id, :class_name => "Event"
end
