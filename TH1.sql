use quanlysinhvien;
select address, count(StudentId) as "Số lượng học viên"
from Student 
group by address;
/*Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG*/
select s.StudentId, s.StudentName, avg(mark)
from student s 
join mark m on s.StudentId = m.StudentId
group by s.StudentId, s.StudentName;
/*Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15 */
/*B1-->Hiển thị điểm trung bình các môn học của mỗi học viên*/
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
