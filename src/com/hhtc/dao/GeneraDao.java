package com.hhtc.dao;
import com.hhtc.po.Admin;
import com.hhtc.po.Student;
import com.hhtc.po.Teacher;
public interface GeneraDao {
	public void updatepw(Teacher teacher);
	public void updatescore(Student student);
	public void updatepws(Student student);
	public void updateAdminPw(Admin admin);
}
