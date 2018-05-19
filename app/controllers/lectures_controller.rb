class LecturesController < InheritedResources::Base
  before_action :authenticate_user!,only: [:upvote,:downvote]



  def index
    @lectures=Lecture.all.order(:cached_votes_score => :desc)

  end

 

  def create
    @lecture= Lecture.new(lecture_params)
    @lecture.user_id=current_user.id

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  def spam
  
    lecture = Lecture.find(params[:id]) 
    current_user.lectures << lecture unless current_user.lectures.include?(lecture)
    redirect_to lectures_path
   

  end

  def upvote
    @lecture = Lecture.find(params[:id]) 
    @lecture.upvote_by current_user
    redirect_to lectures_path

    end

  def downvote
    @lecture = Lecture.find(params[:id]) 
    @lecture.downvote_by current_user
    redirect_to lectures_path

  end 
 
  private

    def lecture_params
      params.require(:lecture).permit(:file, :content,:course_id,:user_id)
    end

    
end

