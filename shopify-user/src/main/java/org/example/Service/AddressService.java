package org.example.Service;

import org.example.Entity.Address;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AddressService {

    List<Address> list(String userId) throws Exception;

    List<Address> save(List<Address> addressList) throws Exception;

    Boolean remove(String id) throws Exception;

}
