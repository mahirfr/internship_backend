package com.mdesign.data.api.controller;

import com.mdesign.data.api.model.Address;
import com.mdesign.data.api.model.AddressType;
import com.mdesign.data.api.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;

@RestController
public class AddressController {
    @Autowired
    private AddressService addressService;

    @GetMapping("/addresses")
    public ResponseEntity<Iterable<Address>> getAddresses(@RequestParam(required = false) AddressType type) {
        if (type == null) return new ResponseEntity<>(addressService.getAddresses(), HttpStatus.OK);

        return new ResponseEntity<>(addressService.getAddressesByType(type), HttpStatus.OK);
    }

    @GetMapping("/addresses/{id}")
    public ResponseEntity<Address> getAddress(@PathVariable final Long id) {
        Optional<Address> optionalAddress = addressService.getAddress(id);
        if (optionalAddress.isPresent()) return new ResponseEntity<>(optionalAddress.get(), HttpStatus.OK);
        else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find address with id " + id);
    }

    @PostMapping("/addresses")
    public ResponseEntity<Address> saveAddress(@RequestBody Address address) {
        return new ResponseEntity<>(addressService.saveAddress(address), HttpStatus.CREATED);
    }

    @PutMapping("/addresses/{id}")
    public ResponseEntity<Address> updateAddress(@RequestBody Address address, @PathVariable final Long id) {
        Optional<Address> optionalAddress = addressService.getAddress(id);
        if (optionalAddress.isPresent()) {
            Address currentAddress = optionalAddress.get();

            String name = address.getName();
            if (name != null) currentAddress.setName(name);

            String number = address.getNumber();
            if (number != null) currentAddress.setNumber(number);

            String street = address.getStreet();
            if (street != null) currentAddress.setStreet(street);

            String postalCode = address.getPostalCode();
            if (postalCode != null) currentAddress.setPostalCode(postalCode);

            String city = address.getCity();
            if (city != null) currentAddress.setCity(city);

            AddressType type = address.getType();
            if (type != null) currentAddress.setType(type);

            addressService.saveAddress(currentAddress);
            return new ResponseEntity<>(currentAddress, HttpStatus.OK);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find address with id " + id);
        }
    }

    @DeleteMapping("/addresses/{id}")
    public ResponseEntity<?> deleteAddress(@PathVariable final Long id) {
        addressService.deleteAddress(id);
        return ResponseEntity.noContent().build();
    }

}
