class Post < ActiveRecord::Base
  # self.abstract = true

  attr_accessible :title, :body, :admin_id

  belongs_to :admin

  # States
  state_machine :initial => :new_post do
    event :preview do
      transition :new_post => :preview
      transition :draft => :preview
    end

    event :editing do
      transition :preview => :editing
    end

    event :draft do
      transition :preview => :draft
      transition :editing => :draft
      transition :new_post => :draft
    end

    event :published do
      transition all => :published
    end
  end

  #constants
  TITLE_MAX_LENGTH = 200

  validates :title,           presence: true,
                                      length: { maximum: TITLE_MAX_LENGTH }
  validates :body,          presence: true
  # validates :admin_id,   presence: true
  validates_associated :admin



end



# == Schema Information
#
# Table name: posts
#
#  id           :integer         not null, primary key
#  title        :string(255)
#  body         :text
#  created_at   :datetime
#  updated_at   :datetime
#  admin_id     :integer
#  state        :string(255)
#  access_state :string(255)
#

