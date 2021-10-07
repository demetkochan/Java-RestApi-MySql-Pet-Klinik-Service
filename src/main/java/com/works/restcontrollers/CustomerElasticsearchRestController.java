package com.works.restcontrollers;

import com.works.dto.CustomerElasticSearchDto;
import com.works.entities.CustomerDoc;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@Api(value ="ElasticSearchRestController")
public class CustomerElasticsearchRestController {

    final CustomerElasticSearchDto cdDto;


    public CustomerElasticsearchRestController(CustomerElasticSearchDto cdDto) {
        this.cdDto = cdDto;
    }

    @ApiOperation("ElasticSearch db ye veri ekleme")
    @PostMapping("/add")
    public Map<String, Object> add(@RequestBody CustomerDoc cd){
        return cdDto.add(cd);
    }

    @ApiOperation("ElasticSearch db listeleme")
    @GetMapping("/list")
    public Map<String, Object> list(){
        return cdDto.list();
    }


    @ApiOperation("ElasticSearch db veri silme")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String, Object> delete(@PathVariable String strIndex){
        return cdDto.delete(strIndex);
    }

    @ApiOperation("ElasticSearch arama")
    @GetMapping("/search/{data}")
    public Map<String, Object> search(@PathVariable String data){
        return cdDto.search(data);
    }
}
