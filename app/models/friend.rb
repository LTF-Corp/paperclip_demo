class Friend < ActiveRecord::Base
  attr_accessible :name, :avatar
  validates_presence_of :name

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates_attachment_content_type :avatar,
    content_type: ["image/png", "image/jpg", "image/jpeg"]

end
