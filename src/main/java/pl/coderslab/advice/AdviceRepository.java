package pl.coderslab.advice;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface AdviceRepository extends JpaRepository<Advice, Long> {

//  Advice findFirstOrderById();

}
