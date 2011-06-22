class DraftPost < Post

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

