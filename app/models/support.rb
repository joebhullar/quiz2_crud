class Support < ApplicationRecord
  # after_initialize :set_default_job_done

  def self.search(keyword)
    where(['name ilike ? or email ilike ? or department ilike ? or message ilike ?', "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end

  private

  def set_default_job_done
    self.job_done ||= if rand(2).zero?
                        false
                      else
                        true
                      end
  end
end
