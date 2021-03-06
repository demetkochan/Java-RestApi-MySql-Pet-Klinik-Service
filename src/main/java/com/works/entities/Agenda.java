package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "Agenda",description = "Ajanda ekleme için kullanılır")
public class Agenda {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "aid", nullable = false)
    private Integer aid;

    @NotNull(message = "Ajanda Başlığı Null Olamaz")
    @NotEmpty(message = "Ajanda Başlığı Boş olamaz")
    @ApiModelProperty(value = "Ajanda adı")
    private String agenda_title;

    @NotNull(message = "Ajanda Açıklama Null Olamaz")
    @NotEmpty(message = "Ajanda Açıklama Boş olamaz")
    @ApiModelProperty(value = "Ajanda açıklama")
    private String agenda_desc;

    @ApiModelProperty(value = "Ajanda Tarih")
    private Date agenda_date;

    @NotNull(message = "Ajanda aktif mi?")
    private Boolean activeChecked;

    @NotNull(message = "Ajanda saat Null Olamaz")
    @NotEmpty(message = "Ajanda saat Boş olamaz")
    @ApiModelProperty(value = "Ajanda saat")
    private String agenda_hours;

}
