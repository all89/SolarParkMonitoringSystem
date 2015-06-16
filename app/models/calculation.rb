class Calculation < ActiveRecord::Base

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |calculations|
        csv << calculations.attributes.values_at(*column_names)
      end
    end
  end
end
