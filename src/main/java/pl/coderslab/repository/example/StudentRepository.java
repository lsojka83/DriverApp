//package pl.coderslab.repository.example;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import pl.coderslab.controller.hero.Student;
//
//import java.util.List;
//
//public interface StudentRepository extends JpaRepository<Student, Long> {
//
//    Student findOneByFirstName(String firstName);
//
//    @Query("select s from Student s where s.firstName like ?1%")
//    List<Student> findBySome(String some);
//}