package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "FarmVaccine",description = "Çiftlik aşı ekleme için kullanılır")
public class FarmVaccine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "farm_vaccine_id", nullable = false)
    private Integer farm_vaccine_id;

    @NotNull(message = "Çiftlik aşı adı boş olamaz")
    @NotEmpty(message = "Çiftlik aşı boş olamaz")
    @ApiModelProperty(value = "Çiftlik Aşı adı")
    private String farm_vaccine_name;

    @NotNull(message = "Çiftlik aşı birim boş olamaz")
    @NotEmpty(message = "Çiftlik aşı birim boş olamaz")
    @ApiModelProperty(value = "Çiftlik Aşı birim")
    private String farm_vaccine_unit;

    @NotNull(message = "Kategori id boş olamaz")
    @ApiModelProperty(value = "Kategori id")
    private int category_group_id;

    @NotNull(message = "Tedarikçi id boş olamaz")
    @ApiModelProperty(value = "Tedarikçi id")
    private int vendor_id;

    @NotNull(message = "Çiftlik aşı türü boş olamaz")
    @NotEmpty(message = "Çiftlik aşı türü boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı türü")
    private String farm_vaccine_type;

    @NotNull(message = "Çiftlik aşı barkodu boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı barkodu")
    private int farm_vaccine_barcode;

    @NotNull(message = "Çiftlik aşı kodu boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı kodu")
    private int farm_vaccine_code;

    @NotNull(message = "Çiftlik aşı kdv boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı KDV oranı")
    private int farm_vaccine_kdv;

    @NotNull(message = "Çiftlik aşı alış fiyatı boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı alış fiyatı")
    private int farm_vaccine_buying;

    @NotNull(message = "Çiftlik aşı satış fiyatı boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı satış fiyatı")
    private int farm_vaccine_sales;

    @NotNull(message = "Çiftlik aşı kritik stok miktarı boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı kritik stok miktarı")
    private int farm_vaccine_stock;

    @NotNull()
    @ApiModelProperty(value = "Çiftlik aşı durumu Aktif/Değil")
    private boolean farm_vaccine_status;

    @NotNull()
    @ApiModelProperty(value = "Çiftlik aşı satış fiyatına KDV dahil mi?")
    private boolean farm_vaccine_sales_kdv;

    @NotNull()
    @ApiModelProperty(value = "Çiftlik aşı alış fiyatına KDV dahil mi?")
    private boolean farm_vaccine_buying_kdv;

    @NotNull()
    @ApiModelProperty(value = "Miktarlı satışlarda fiyat sabitlensin mi?")
    private boolean farm_vaccine_amount_fixed;

    @NotNull(message = "Çiftlik aşı tipi boş olamaz")
    @NotEmpty(message = "Çiftlik aşı tipi boş olamaz")
    @ApiModelProperty(value = "Çiftlik aşı tipi")
    private String farm_vaccine_tip;

}
