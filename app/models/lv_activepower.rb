class LvActivepower < ActiveRecord::Base

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |lv|
        csv << lv.attributes.values_at(*column_names)
      end
    end
  end
end
