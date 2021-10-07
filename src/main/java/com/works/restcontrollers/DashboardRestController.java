package com.works.restcontrollers;


import com.works.dto.DashboardDto;
import com.works.repositories.CustomerRepository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/dashboard")
@Api(value ="DashboardRestController",authorizations ={@Authorization(value = "basicAuth")})

public class DashboardRestController {

    final DashboardDto dashboardDto;
    final CustomerRepository cRepo;

    public DashboardRestController(DashboardDto dashboardDto, CustomerRepository cRepo) {
        this.dashboardDto = dashboardDto;
        this.cRepo = cRepo;
    }

    @ApiOperation("Yaklaşan Randevuların Listesi")
    @GetMapping("/Calendarlist")
    public Map<String ,Object> Calendarlist(){
        return dashboardDto.CalendarList();
    }

    //toplam müşteri sayısı
    @ApiOperation("Toplam Müşteri Sayısı")
    @GetMapping("/customerCount")
    public Map<String ,Object> CustomerCount(){
        return dashboardDto.CustomerTotalList();
    }

    //toplam satış miktarı
    @ApiOperation("Toplam Satış Miktarı")
    @GetMapping("/totalSaleCount")
    public Map<String ,Object> totalSaleCount(){
        return dashboardDto.totalSaleCount();
    }

    //toplam kazanım
    @ApiOperation("Toplam Kazanım")
    @GetMapping("/total")
    public Map<String ,Object> total(){
        return dashboardDto.total();
    }

    //toplam Stok Değeri
    @ApiOperation("Toplam Stok Değeri")
    @GetMapping("/totalStockList")
    public Map<String ,Object> totalStockList(){
        return dashboardDto.totalStockList();
    }
}
