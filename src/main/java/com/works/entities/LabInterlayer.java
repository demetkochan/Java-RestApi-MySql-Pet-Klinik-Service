package com.works.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
@ApiModel(value = "Laboratuvar", description = "Laboratuvar veri ekleme için kullanılır.")
public class LabInterlayer {


    @Min(value = 0)
    @ApiModelProperty(value = "Labortuvar tipi ")
    private Integer lab_type;

    @Min(value = 0)
    @ApiModelProperty(value = "Hayvan id ")
    private Integer animalName;

    @ApiModelProperty(value = "Hastalık teşhisi ")
    @NotEmpty(message = "Teşhis boş olamaz")
    @NotNull(message = "Teşhis null olamaz!")
    private String diagnosis;

    @Min(value = 0)
    @ApiModelProperty(value = "Müşteri No")
    private Integer cus_no;


}
