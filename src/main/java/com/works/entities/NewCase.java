package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "NewCase",description = "Kasa ekleme için kullanılır")
public class NewCase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "case_id", nullable = false)
    private Integer case_id;

    @NotNull(message = "Kasa tipi boş olamaz")
    @NotEmpty(message = "Kasa tipi boş olamaz")
    @ApiModelProperty(value = "Kasa Tipi ")
    private String case_type;

    @NotNull(message = "Kasa adı boş olamaz")
    @NotEmpty(message = "Kasa adı boş olamaz")
    @ApiModelProperty(value = "Kasa adı ")
    private String case_name;

    @NotNull()
    @ApiModelProperty(value = "Kasa Durumu ")
    private boolean case_status;
}