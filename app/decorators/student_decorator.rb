class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg = SubjectItemNote.where("subject_item_id = ?", subject_item.id).average(:value)
  	avg.nil? ? "%.2f" % 0 : "%.2f" % avg
  end
  

end
