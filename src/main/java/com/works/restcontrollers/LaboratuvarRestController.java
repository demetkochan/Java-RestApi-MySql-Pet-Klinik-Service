package com.works.restcontrollers;

import com.works.dto.LaboratuvarDto;
import com.works.entities.LabInterlayer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

@RestController
@RequestMapping("/laboratuvar")
@Api(value ="LaboratuvarRestController",authorizations ={@Authorization(value = "basicAuth")})

public class LaboratuvarRestController {

    final LaboratuvarDto laboratuvarDto;

    public LaboratuvarRestController(LaboratuvarDto laboratuvarDto) {
        this.laboratuvarDto = laboratuvarDto;
    }


    @ApiOperation("Laboratuvar veri ekleme")
    @PostMapping("/upload")
    public Map<String, Object> upload(@RequestParam("imageName") MultipartFile file, LabInterlayer laboratuvar) {
        return laboratuvarDto.upload(file,laboratuvar);
    }

    @ApiOperation("Laboratuvar veri listeleme")
    @GetMapping("/list")
    public Map<String,Object> labList(){
        return laboratuvarDto.labList();
    }

    @ApiOperation("Laboratuvar veri silme")
    @DeleteMapping("/delete/{strlid}")
    public Map<String, Object> delete (@PathVariable String strlid) {
        return laboratuvarDto.delete(strlid);
    }
}
