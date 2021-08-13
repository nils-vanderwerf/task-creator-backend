class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  def get_tasks
    render json: {tasks: Task.all}
  end
  # GET /tasks or /tasks.json
  def get_user_tasks
    puts "CURRENT USER: #{get_current_user}"
    if get_current_user
      # if params[:category_ids].empty?
      tasks = get_current_user.tasks.order(created_at: :desc)
      tasks_categories = TaskSerializer.new(tasks)

        puts "CATEGORRRIES", tasks_categories

        render json: TaskSerializer.new(tasks).to_serialized_json
    else 
      render json: {
        error: "Login to see tasks"
      }
    # render json: get_current_user.tasks.order(created_at: :desc)
    end 
  end
  # class Api::V1::PetsController < ApplicationController
  #   def index
  #     if logged_in?
  #       @pets = Pet.all
  #       pets_json = PetSerializer.new(@pets)
  #       render json: pets_json
  #     else
  #       render json: {
  #         error: "Login to view pets."
  #       }
  #     end
  #   end
  
  
  
  #   def show
  #     @pet = Pet.find_by(id: params[:id])
  #     pet_json = PetSerializer.new(@pet)
  #     render json: pet_json
  #   end
  # end
  

  # POST /tasks or /tasks.json  
  def add_user_task
    task = Task.create(task_params)
    puts "New task: #{task}"
    if task
      render json: {task: task}
    else
      render json: task.error.full_messages, status: 402
    end
  end
  
  # POST /tasks or /tasks.json 
  def edit_user_task
    task = Task.find(params[:id])
    
    if task.update(task_params)
      render json: {task: task, status: 201} 
    else
      render json: {errors: task.errors.full_message , status: 422}
    end
  end
  
  # GET /tasks/1 or /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
  end

  # DELETE /tasks/1 or /tasks/1.json
  def delete_user_task
    task = Task.find(params[:id])
    if task.destroy
      render json: {message: 'Task successfully deleted!'}
    else
      render json: task.errors.full_messages, status: 402
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params
        .require(:task)
        .permit(:id, :title, :description, :user_id, category_ids:[])
        .with_defaults(:user_id => get_current_user.id)
    end
end