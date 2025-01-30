package com.controller;

import com.entity.Device;
import com.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    private DeviceService deviceService;

    @PostMapping("/device/saveDevices")
    public List<Device> saveDevices(@RequestBody String devicesData) {
        return deviceService.saveDevices(devicesData);
    }

}