package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "Customer",description = "Müşteri ekleme için kullanılır")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cid", nullable = false)
    private Integer cid;

    @ApiModelProperty(value = "Müşteri adı")
    @NotNull(message = "Müşteri adı null olamaz ")
    @NotEmpty(message = "Müşteri adı boş olamaz")
    private String cname;

    @ApiModelProperty(value = "Müşteri Soyadı ")
    @NotNull(message = "Müşteri soyadı null olamaz ")
    @NotEmpty(message = "Müşteri soyadı boş olamaz")
    private String csurname;

    @ApiModelProperty(value = "Müşteri Telefon ")
    @NotNull(message = "Müşteri telefonu null olamaz ")
    @NotEmpty(message = "Müşteri telefonu boş olamaz")
    private String c_phone;

    @ApiModelProperty(value = "Müşteri ikinci telefon ")
    private String c_mobile_phone;

    @ApiModelProperty(value = "Müşteri email ")
    @NotNull(message = "Müşteri email adresi null olamaz ")
    @NotEmpty(message = "Müşteri email adresi boş olamaz")
    private String c_email;

    @ApiModelProperty(value = "Vergi Dairesi ")
    private String tax_administration;

    @ApiModelProperty(value = "Müşteri Notu ")
    private String c_note;

    @ApiModelProperty(value = "Müşteri TC no ")
    @NotNull(message = "Müşteri tc no null olamaz ")
    @NotEmpty(message = "Müşteri tc no boş olamaz")
    private String tc_no;

    @ApiModelProperty(value = "Müşter İl Bilgisi")
    @NotNull(message = "İl bilgisi null olamaz ")
    @NotEmpty(message = "İl bilgisi adı boş olamaz")
    private String il;

    @ApiModelProperty(value = "Müşteri İlçe Bilgisi ")
    private String ilce;

    @ApiModelProperty(value = "Müşteri Adresi ")
    @NotNull(message = "Müşteri adresi null olamaz ")
    @NotEmpty(message = "Müşteri adresi boş olamaz")
    private String address;

    @ApiModelProperty(value = "Müşteri Kodu ")
    private String c_code;

    @ApiModelProperty(value = "Müşteri No",notes = "Hayvan eklenebilmesi için bu alan mutlaka girilmelidir.")
    @NotNull(message = "Müşteri no null olamaz ")
    @NotEmpty(message = "Müşteri no boş olamaz")
    private String c_no;


}
