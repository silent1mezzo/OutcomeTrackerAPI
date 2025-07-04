class Evidence < ApplicationRecord
  belongs_to :activity
  belongs_to :promise
  belongs_to :linked_by, class_name: "User", optional: true
  belongs_to :reviewed_by, class_name: "User", optional: true

  after_commit do
    self.promise.set_last_evidence_date!
  end
end
