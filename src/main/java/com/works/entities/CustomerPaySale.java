package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "Kayıtlı Tedarikçi satış ödeme",description = "Satış ödeme için kullanılır")
public class CustomerPaySale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cp_id", nullable = false)
    private Integer cp_id;

    private int saleBoxtotal;
    private String c_name;

    @Min(value = 1)
    @ApiModelProperty(value = "Kayıtlı Tedarikçi satış işlemi ")
    private int customer_process;

    @Min(value = 1,message = "Kayıtlı tedarikçi fatura no en küçük 1 olabilir")
    @ApiModelProperty(value = "Kayıtlı Tedarikçi Fatura No ")
    private int customerBillNumber;

    @ApiModelProperty(value = "Kayıtlı Tedarikçi satış tarihi ")
    private Date box_cus_date;
}
