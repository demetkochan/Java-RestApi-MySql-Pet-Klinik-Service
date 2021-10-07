package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.stereotype.Service;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;


@Entity
@Data
@ApiModel(value = "Stock",description = "Ürün stok ekleme için kullanılır")
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sid", nullable = false)
    private Integer sid;

    @ApiModelProperty(value = "Depo id")
    @NotNull(message = "Depo id boş olamaz")
    private int depo;

    @ApiModelProperty(value = "Ürün miktarı")
    @NotNull(message = "Miktar boş olamaz")
    private int amount;

    @ApiModelProperty(value = "Ürün id")
    @NotNull(message = "Ürün id boş olamaz")
    private int product;




}

