package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "Satış",description = "Satış ekleme için kullanılır")
public class RetailSale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rid", nullable = false)
    private Integer rid;

    private int saletotal;
    private String product_name;

    @Min(value = 1)
    @ApiModelProperty(value = "Satış İşlem")
    private int sale_process;

    @ApiModelProperty(value = "Satış Tarihi")
    private Date sale_date;


}
