package com.works.dto;

import com.works.Util.Util;
import com.works.entities.Animal;
import com.works.repositories.AnimalRepository;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class AnimalDto {
    final AnimalRepository aRepo;
    final Util util;

    public AnimalDto(AnimalRepository aRepo, Util util) {
        this.aRepo = aRepo;
        this.util = util;

    }

    public Map<String, Object> add(Animal animal, BindingResult bindingResult) {
        Map<String,Object> hm=new LinkedHashMap<>();
        if(bindingResult.hasErrors()){
            hm.put("status",false);
            hm.put("message",util.errors(bindingResult));
        }else {
            hm.put("status", true);
            hm.put("message","Ekleme Başarılı!");
            Animal animal1 = aRepo.save(animal);
            hm.put("animal", animal1);

        }
        return hm;
    }

    @GetMapping("/list")
    public Map<String,Object> list(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Animal> ls = aRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> AnimalDelete (String strIndex){
        Map<String, Object> hm = new HashMap<>();
        int cuid = Integer.parseInt(strIndex);
        try{
            if(aRepo.existsById(cuid)){
                aRepo.deleteById(cuid);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", cuid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", cuid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", cuid);
        }
        return hm;
    }



}
