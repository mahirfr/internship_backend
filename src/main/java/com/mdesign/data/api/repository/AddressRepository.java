package com.mdesign.data.api.repository;

import com.mdesign.data.api.model.Address;
import com.mdesign.data.api.model.AddressType;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends CrudRepository<Address, Long> {
    Iterable<Address> findByType(AddressType type);
}
