package org.example.Service.Impl;

import org.example.Entity.Address;
import org.example.Repositry.AddressRepositry;
import org.example.Service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
public class AddressServiceImpl implements AddressService {

    private AddressRepositry addressRepositry;

    @Autowired
    public AddressServiceImpl(AddressRepositry addressRepositry) {
        this.addressRepositry = addressRepositry;
    }

    @Override
    public List<Address> list(String userId) throws Exception {
        List<Address> addressList = addressRepositry.list(userId);

        if (addressList == null) throw new Exception("NullPointException");
        return addressList;
    }

    @Override
    @Transactional
    public List<Address> save(List<Address> addressList) throws Exception {
        addressList.forEach(address -> {
            if (address.getId() == null) {
                address.setId(UUID.randomUUID().toString());
            }

            System.out.println(address);

            Integer insertResult = addressRepositry.insertOne(address);

            if (insertResult == 0) try {
                throw new Exception("Insert Failed");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });

        List<Address> list = addressRepositry.list(addressList.get(0).getUserId());
        if (list == null) throw new Exception("Insert Failed");
        return list;
    }

    @Override
    public Boolean remove(String id) throws Exception {
        if (!addressRepositry.remove(id)) throw new Exception("Remove Failed");
        return true;
    }
}
