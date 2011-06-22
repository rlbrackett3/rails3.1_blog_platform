class Comment < ActiveRecord::Base
  attr_accessible :name, :email, :url, :body

  belongs_to :post, dependent: :destroy

  # Validations
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  name_regex = /[a-zA-Z0-9_ ]/i
  # url_regex = \b((ftp|https?)://[-\w]+(\.\w[-\w]*)+ | (?i: [a-z0-9] (?:[-a-z0-9]*[a-z0-9])? \. )+(?-i: com\b | edu\b | biz\b | gov\b | in(?:t|fo)\b | mil\b | net\b | org\b | [a-z][a-z]\b ))( : \d+ )?)/[^.!,?;<>()\[\]{}\s\x7F-\xFF]*(?:[.!,?]+  [^.!,?;<>()\[\]{}\s\x7F-\xFF]+)*)?

  validates :name,           presence: true,
                                        length: { within: 3..60 },
                                        format: name_regex
  validates :email,           presence: true,
                                        length: { within: 5..120 },
                                        format: email_regex
  validates :url,                length: { within: 9..254, allow_blank: true }
  validates :body,            presence: true,
                                        length: { within: 3..1024 }

end

# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  url        :string(255)
#  body       :text
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
