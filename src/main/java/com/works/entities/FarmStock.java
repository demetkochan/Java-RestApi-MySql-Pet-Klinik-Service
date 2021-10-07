package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "FarmStock",description = "Çiftlik aşı stok ekleme için kullanılır")
public class FarmStock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fsid", nullable = false)
    private Integer fsid;

    @ApiModelProperty(value = "Çiftlik aşı id")
    @NotNull(message = "Çiftlik aşı id boş olamaz")
    private int farm_vac;

    @ApiModelProperty(value = "Depo id")
    @NotNull(message = "Depo id boş olamaz")
    private int warehouse;

    @ApiModelProperty(value = "Çiftlik aşı miktarı")
    @NotNull(message = "Miktar boş olamaz")
    private int number;

}
