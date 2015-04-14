class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]


  def index
    # byebug
    @notes = Note.where(user_id: current_user.id).search(params[:first_date], params[:second_date])
  end

  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to @note, notice: 'Заметка успешно создана!'
    else
      render :new
    end
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: 'Заметка успешно обновлена!'
    else
      render :edit
    end
  end

  def destroy
    if @note.destroy
      redirect_to notes_url, notice: 'Заметка успешно удалена!'
    end
  end


  private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      note = params.require(:note).permit(:title, :event_description, :user_id)
    end
end
