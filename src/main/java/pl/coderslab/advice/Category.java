package pl.coderslab.advice;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

@Entity
@Table(name = "category")
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    @NotBlank
    private String name;
    @Column(name = "createdOn")
    private LocalDateTime createdOn;
    @Column(name = "lastModifiedOn")
    private LocalDateTime lastModifiedOn;

    @PrePersist
    public void prePersist() {
        createdOn = LocalDateTime.now().truncatedTo(ChronoUnit.SECONDS);
    }

    @PreUpdate
    public void preUpdate() {
        lastModifiedOn = LocalDateTime.now().truncatedTo(ChronoUnit.SECONDS);
    }


}
