insert into Marks
select * from NewMarks
where not exists(select 1 from Marks where Marks.StudentId = NewMarks.StudentId and Marks.CourseId = NewMarks.CourseId);