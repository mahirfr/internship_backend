package com.mdesign.data.api.service;

import com.mdesign.data.api.model.Address;
import com.mdesign.data.api.model.AddressType;
import com.mdesign.data.api.repository.AddressRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Data
@Service
public class AddressService {
    @Autowired
    private AddressRepository addressRepository;

    public Optional<Address> getAddress(final Long id) {
        return addressRepository.findById(id);
    }

    public Iterable<Address> getAddressesByType(AddressType type) {
        return addressRepository.findByType(type);
    }

    public Iterable<Address> getAddresses() {
        return addressRepository.findAll();
    }

    public void deleteAddress(final Long id) {
        addressRepository.deleteById(id);
    }

    public Address saveAddress(Address address) {
        return addressRepository.save(address);
    }
}
