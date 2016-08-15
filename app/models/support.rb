class Support < ApplicationRecord
  # after_initialize :set_default_job_done

  private

  def set_default_job_done
    self.job_done ||= if rand(2).zero?
                        false
                      else
                        true
                      end
  end
end
