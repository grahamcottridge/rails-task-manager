class TodosController < ApplicationController

  def index         # GET /restaurants
  	@todo = Todo.all
  end

  def show          # GET /restaurants/:id
    @todo = Todo.find(params[:id])
  end

  def new           # GET /restaurants/new
    @todo = Todo.new
  end

  def create        # POST /restaurants
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todo_path(@todo)
  end

  def edit          # GET /restaurants/:id/edit
    @todo = Todo.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
    redirect_to todo_path(@todo)
  end

  def destroy       # DELETE /restaurants/:id
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :description)
  end

end
