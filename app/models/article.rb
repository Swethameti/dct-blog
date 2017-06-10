class Article < ActiveRecord::Base

  validates_presence_of :title, :body, :category_id, :published_date

  validate :published_date_not_less_than_yestderday

  def published_date_not_less_than_yestderday
    if !self.published_date.nil?
      if self.published_date

      end


    end


    if !self.category_id.nil?
      if (self.category_id == 3 || self.category_id == 4)  && self.cod_eligibility
        self.errors.add(:cod_eligibility, " Not available for category #{Category.find(self.category_id).name}")
      end
    end
  end
