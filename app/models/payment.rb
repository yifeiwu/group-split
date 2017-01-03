# == Schema Information
#
# Table name: payments
#
#  id          :integer          not null, primary key
#  person_id   :integer
#  report_id   :integer
#  amount_owed :decimal(, )      not null
#  has_paid    :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :report
  belongs_to :person
  after_initialize :init

  def init
    self.has_paid ||= false
  end
end