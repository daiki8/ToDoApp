class Task < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  validates :title , presence: true, length: {maximum: 50}
  
  def activate
    update_columns(activated: true, activated_at: Time.zone.now)
  end
  
  def unactivate
    update_columns(activated: false, activated_at: nil)
  end
end
