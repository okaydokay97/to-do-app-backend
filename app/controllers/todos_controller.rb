class TodosController < ApplicationController

  def index 
    todos = Todo.all
    render json: todos
  end

  def show 
    todo = Todo.find(params[:id])
    render json: todo
  end

  def create
    found_user = User.find_by(id: params[:user][:id])
    todo = Todo.create(title: params[:title], content: params[:content], importance: params[:importance], user: found_user)
    render json: todo
  end

  def update
    found_user = User.find_by(id: params[:user][:id])
    todo = Todo.find_by(id: params[:id])
    todo.update(title: params[:title], content: params[:content], importance: params[:importance], user: found_user)
    render json: todo
  end

  def destroy
    todo = Todo.find_by(id: params[:id])
    todo.delete
  end

end
