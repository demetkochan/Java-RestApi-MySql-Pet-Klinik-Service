package com.works.entities;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "Animal",description = "Hayvan ekleme için kullanılır")
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "aid", nullable = false)
    private Integer aid;

    @ApiModelProperty(value = "Hayvan Adı")
    @NotNull(message = "Hayvan adı null olamaz ")
    @NotEmpty(message = "Hayvan adı boş olamaz")
    private String p_name;

    @Column(unique = true)
    @ApiModelProperty(value = "Hayvan Çip No")
    private int cip_no;

    @Min(value = 1)
    @ApiModelProperty(value = "Hayvan Karne No")
    private int karne_no;

    @ApiModelProperty(value = "Hayvan Doğum Tarihi")
    private Date p_birth;

    @ApiModelProperty(value = "Hayvan türü")
    @NotNull(message = "Tipi null olamaz ")
    @NotEmpty(message = "Tipi boş olamaz")
    private String p_type;

    @ApiModelProperty(value = "Hayvan Irkı")
    @NotNull(message = "Irkı null olamaz ")
    @NotEmpty(message = "Irkı boş olamaz")
    private String p_race;

    @ApiModelProperty(value = "Hayvan Rengi")
    @NotNull(message = "Renk null olamaz ")
    @NotEmpty(message = "Renk boş olamaz")
    private String pcolor;

    @Min(value = 1)
    @Max(value = 2)
    @ApiModelProperty(value = "Hayvan cinsiyeti")
    private int gender;

    @ApiModelProperty(value = "Kısırlaştırılmış Bilgisi")
    @NotNull(message = "Kısırlaştırılmış mı?")
    private boolean spayed;

    @Min(value = 1)
    @ApiModelProperty(value = "Müşteri No")
    private int cus_no;


}