subject_teacher = [
    ["компьютерные сети", "Гришин Платон Николаевич"],
    ["математика", "Кузнецова Ева Данииловна"],
    ["программирование", "Игнатов Илья Александрович"],
    ["экономика", "Шувалова Эмма Викторовна"],
    ["философия", "Комаров Никита Семёнович"],
    ["менеджмент", "Яковлев Марк Артёмович"],
    ["социология", "Королева Олеся Фёдоровна"],
    ["история", "Гаврилова Милана Владимировна"]
]

function randomIntFromInterval(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min);
  }

for (st of db.students.find()) {
    for(let sem = 1; sem <= 4; sem++) {
        for(s_t of subject_teacher) {
            db.marks.insertOne({
                student: st._id,
                semestr: sem,
                subject: s_t[0],
                teacher: s_t[1],
                mark: randomIntFromInterval(2, 5)
            })
        }
    }
}