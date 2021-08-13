class TaskSerializer

  def initialize(task_object)
    @task= task_object
  end

  def to_serialized_json
    @task.to_json(:include => {
      :categories => {:except => [:created_at, :updated_at]},
    }, :except => [:created_at, :updated_at])
  end

end
  # render json: get_current_user.tasks.order(created_at: :desc)
  
  