Subject.create!(
  title: "統計基礎",
  weekday: "friday",
  period: "3"
)

Teacher.create!(
  [
    {
      name: "山田太郎"
    },
    {
      name: "田中次郎"
    }
  ]
)

subject = Subject.find_by(title: "統計基礎")

Lecture.create!(
  [
    {
      title: "ガイダンス",
      date: "2020-04-23",
      subject_id: subject.id, 
      teacher_id: Teacher.all.ids[0]
    },
    {
      title: "確率変数と確率分布",
      date: "2020-04-30",
      subject_id: subject.id, 
      teacher_id: Teacher.all.ids[0]
    },
    {
      title: "田中先生の授業1",
      date: "2020-05-01",
      subject_id: subject.id, 
      teacher_id: Teacher.all.ids[1]
    },
    {
      title: "田中先生の授業2",
      date: "2020-05-15",
      subject_id: subject.id, 
      teacher_id: Teacher.all.ids[1]
    }
  ]
)
