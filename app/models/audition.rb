class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back #Sets hired to true for audition
    self.hired = true
    self.save
  end
end