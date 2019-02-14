class CreatorJob < ApplicationJob
  queue_as :default
  def perform(*args)
  	@plan = JobsPlan.all.last
  	puts @plan.when
 #  	@a = @plan.when
 #  	puts @a 
	# @when = @plan.when
	# @over = @plan.over
	# @plan.when = @over
	# @plan.over = @plan.when + 60
	# Delayed::Job.enqueue eval(@plan.planned_job).new, :run_at => @plan.when
	# CreatorJob.set().delay.perform_now
  end
end
