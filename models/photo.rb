
class Photo < ActiveRecord::Base
  belongs_to :user 
end

#1st 
#shuffledphotos = Photo.all.shuffle

#2 6.times do 

#end

#<%= shuffledphotos[0]['image_url'] %>