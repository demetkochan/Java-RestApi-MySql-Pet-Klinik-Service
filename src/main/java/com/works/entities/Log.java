package com.works.entities;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class Log {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "log_id",nullable = false)
    private int log_id;

    private String lname;
    private String lsurname;
    private String lemail;
    private String lsessionId;
    private String lIp;
    private String lroles;
    private String lUrl;
    private LocalDateTime lDate;


}