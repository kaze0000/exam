module Api
  module V1
    class SubjectsController < ApplicationController
      def index
        begin
          subects = Subject.order(created_at: :desc)
          subject = subects.find_by(title: params[:keyword])
          teacher = Teacher.where('name like ?', "%#{params[:teacher_name]}%")
          # [Q]jsonで返すカラムを制限したい。create_atなど。
          render json: { data: [subject, teacher, subject.lectures.where(teacher_id: teacher.ids)] }
        rescue => e
          render json: { message: "検索に失敗しました。" }
        end
      end
    end
  end
end
