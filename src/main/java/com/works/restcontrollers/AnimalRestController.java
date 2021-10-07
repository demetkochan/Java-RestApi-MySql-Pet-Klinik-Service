package com.works.restcontrollers;

import com.works.dto.AnimalDto;
import com.works.entities.Animal;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/animal")
@Api(value ="AnimalRestController",authorizations ={@Authorization(value = "basicAuth")})
public class AnimalRestController {
    final AnimalDto aDto;

    public AnimalRestController(AnimalDto aDto) {
        this.aDto = aDto;
    }

    @ApiOperation("Müşteriye Hayvan ekleme")
    @PostMapping("/add")
    public Map<String,Object> add(@RequestBody @Valid Animal animal, BindingResult bindingResult){
        return aDto.add(animal,bindingResult) ;
    }

    @ApiOperation("Hayvan Listeleme")
    @GetMapping("/list")
    public Map<String ,Object> list(){
        return aDto.list();
    }

    @ApiOperation("Hayvan  veri silme")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String, Object> delete(@PathVariable String strIndex){
        return aDto.AnimalDelete(strIndex);
    }
}