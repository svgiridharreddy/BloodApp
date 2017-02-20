class Search < ActiveRecord::Base
  def self.search(search)
    if search
      find(:all, :conditions => ['blood_group LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end