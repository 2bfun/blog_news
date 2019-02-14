class CreateJobsPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs_plans do |t|
      t.string :planned_job
      t.datetime :when
      t.datetime :over

      t.timestamps
    end
  end
end
