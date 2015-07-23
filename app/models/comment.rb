class Comment < ActiveRecord::Base

  belongs_to :user
  # belongs_to :votable, polymorphic: true

  # def owned_by? user
  #   user && user.id == self.user.id
  # end

end
