package com.works.restcontrollers;

import com.works.dto.SalesDto;
import com.works.entities.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/sales")
@Api(value ="SalesRestController",authorizations ={@Authorization(value = "basicAuth")})
public class SalesRestController {

    final SalesDto salesDto;

    public SalesRestController(SalesDto salesDto) {
        this.salesDto = salesDto;
    }

    //ürünlerin listesi
    @ApiOperation("Ürünlerin Listesi")
    @GetMapping("/productList")
    public Map<String ,Object> productList(){
        return salesDto.productList();
    }

    //Müşteri Listesi
    @ApiOperation("Müşterilerin Listesi")
    @GetMapping("/customerList")
    public Map<String ,Object> customerList(){
        return salesDto.customerList();
    }


    //sepete ürün ekleme
    @ApiOperation("Parekende satış için sepete ekleme")
    @PostMapping("/boxadd")
    public Map<String, Object> boxadd(@RequestBody @Valid Box box, BindingResult bResult){

        return salesDto.boxAdd(box,bResult);
    }

    //seçilenlerin ödeme kısmında hesaplanıp eklenmesi
    @ApiOperation("Parekende için sepete eklenenlerin ödenmesi")
    @PostMapping("/retailSale/{box_id}/{sales_product_amount}")
    public Map<String, Object> retailSale(@RequestBody @Valid RetailSale retailSale, BindingResult bResult, @PathVariable String box_id, @PathVariable String sales_product_amount){

        return salesDto.RetailSaleadd(retailSale,box_id,sales_product_amount,bResult);
    }

    //Kayıtlı Müşteri Listeleme
    @ApiOperation("Kayıtlı Müşterileri listeleme")
    @GetMapping("/customerPaylist")
    public Map<String ,Object> customerPaylist(){
        return salesDto.customerPaylist();
    }

    //Kayıtlı Müşteri sepete ekleme (box_customer)
    @ApiOperation("Kayıtlı Müşteriler için sepete ekleme")
    @PostMapping("/boxCustomeradd")
    public Map<String, Object> boxCustomeradd(@RequestBody @Valid BoxCustomer boxCustomer, BindingResult bResult){
        return salesDto.boxCustomerAdd(boxCustomer,bResult);
    }

    //Kayıtlı Müşteri Ödeme kısmı hesaplanıp eklenilmesi
    @ApiOperation("Kayıtlı Müşteri için sepete eklenenlerin ödenmesi")
    @PostMapping("/customerPaySale/{pid}/{sale_amount}/{cid}")
    public Map<String, Object> customerPaySale(@RequestBody CustomerPaySale customerPaySale, @PathVariable String pid, @PathVariable String sale_amount, @PathVariable String cid){

        return salesDto.CustomerPaySaleadd(customerPaySale,pid,sale_amount, cid);
    }


}
