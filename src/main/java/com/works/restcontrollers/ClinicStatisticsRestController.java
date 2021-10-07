package com.works.restcontrollers;

import com.works.dto.ClinicStatisticsDto;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/clinicalStatistics")
@Api(value ="ClinicStatisticsRestController",authorizations ={@Authorization(value = "basicAuth")})

public class ClinicStatisticsRestController {

    final ClinicStatisticsDto clinicStatisticsDto;

    public ClinicStatisticsRestController(ClinicStatisticsDto clinicStatisticsDto) {
        this.clinicStatisticsDto = clinicStatisticsDto;
    }

    //Çıkan Lab sonuçları
    @ApiOperation("Çıkan Lab Sonuçları")
    @GetMapping("/countLab")
    public Map<String ,Object> countLab(){
        return clinicStatisticsDto.countLab();
    }

    //Toplam Hasta sayısı
    @ApiOperation("Toplam Hasta Sayısı")
    @GetMapping("/totalAnimal")
    public Map<String ,Object> totalAnimal(){
        return clinicStatisticsDto.TotalAnimal();
    }

    //Toplam Randevu sayısı
    @ApiOperation("Toplam Randevu Sayısı")
    @GetMapping("/totalSchedule")
    public Map<String ,Object> totalSchedule(){
        return clinicStatisticsDto.Totalschedules();
    }

    //Hangi müşteri ne kadar kazandırdı
    @ApiOperation("Hangi Müşteri Ne Kadar Kazandırdı?")
    @GetMapping("/totalClinicList")
    public Map<String ,Object> totalClinicList(){
        return clinicStatisticsDto.totalClinicList();
    }

    //Ödeme türüne göre toplam kazanç
    @ApiOperation("Ödeme Türüne Göre Toplam Kazançların listesi")
    @GetMapping("/listProcess")
    public Map<String ,Object> listProcess(){
        return clinicStatisticsDto.listProcess();
    }

}
