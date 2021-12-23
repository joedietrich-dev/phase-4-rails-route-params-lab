class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name (name)
    Student.where("LOWER(first_name) = ? OR LOWER(last_name) = ?", name.downcase, name.downcase)
  end

end
