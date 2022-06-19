require "rails_helper"

describe "Subject search api" do
  it "fail to search" do
    get "/api/v1/subjects"
    expect(response.status).to eq(200)
    expect(response.body).to include "検索に失敗しました。"
  end

  it "success to search" do
    lecture = create(:lecture)
    # https://www.web-dev-qa-db-ja.com/ja/ruby-on-rails/rspec%E3%83%86%E3%82%B9%E3%83%88%E3%81%AF%E3%80%81get%E3%83%91%E3%83%A9%E3%83%A1%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%92%E4%BD%BF%E7%94%A8%E3%81%97%E3%81%A6url%E3%81%AB%E3%83%AA%E3%83%80%E3%82%A4%E3%83%AC%E3%82%AF%E3%83%88%E3%81%97%E3%81%BE%E3%81%99/1047575030/
    get api_v1_subjects_path keyword: lecture.title, teacher_name: lecture.teacher.name
    expect(response.body).to include lecture.title, lecture.teacher.name
  end  
end
