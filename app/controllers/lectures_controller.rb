class LecturesController < InheritedResources::Base

  private

    def lecture_params
      params.require(:lecture).permit(:file, :content,:course_id,:user_id)
    end
end

