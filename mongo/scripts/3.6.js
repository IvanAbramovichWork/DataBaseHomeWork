
direction_count = {}
for (gr of db.groups.find()) {
    students_in_group = db.students.find({group_id: gr._id}).count()
    if (gr.direction in direction_count) {
        direction_count[gr.direction] += students_in_group
    } else {
        direction_count[gr.direction] = students_in_group
    } 
}
print(direction_count)
