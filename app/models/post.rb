class Post < ActiveRecord::Base
  # self.abstract = true

  attr_accessible :title, :body, :admin_id, :state

  belongs_to :admin

  # States and Transitions with state_machine gem
  state_machine :initial => :initial do
    event :preview do
      transition :draft => :preview
    end

    event :draft do
      transition all => :draft
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

  # scopes
  scope :drafts, where(state: 'draft')
  scope :published, where(state: 'published')

end




# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  admin_id   :integer
#  state      :string(255)
#

