class LecturesController < InheritedResources::Base
  before_action :authenticate_user!,only: [:upvote,:downvote]



  def index
    @lectures=Lecture.all.order(:cached_votes_score => :desc)

  end

  def spam
  
    @lecture = Lecture.find(params[:id]) 
    @lecture.liked_by current_user
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

