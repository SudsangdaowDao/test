// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.spt.workshop1.web;

import com.spt.workshop1.domain.Address;
import com.spt.workshop1.domain.EmpType;
import com.spt.workshop1.domain.Employee;
import com.spt.workshop1.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Address, String> ApplicationConversionServiceFactoryBean.getAddressToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.spt.workshop1.domain.Address, java.lang.String>() {
            public String convert(Address address) {
                return new StringBuilder().append(address.getVillage()).append(' ').append(address.getHouseNo()).append(' ').append(address.getRoad()).toString();
            }
        };
    }
    
    public Converter<Long, Address> ApplicationConversionServiceFactoryBean.getIdToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.spt.workshop1.domain.Address>() {
            public com.spt.workshop1.domain.Address convert(java.lang.Long id) {
                return Address.findAddress(id);
            }
        };
    }
    
    public Converter<String, Address> ApplicationConversionServiceFactoryBean.getStringToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.spt.workshop1.domain.Address>() {
            public com.spt.workshop1.domain.Address convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Address.class);
            }
        };
    }
    
    public Converter<EmpType, String> ApplicationConversionServiceFactoryBean.getEmpTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.spt.workshop1.domain.EmpType, java.lang.String>() {
            public String convert(EmpType empType) {
                return new StringBuilder().append(empType.getEmpTypeName()).append(' ').append(empType.getEmpTypeCode()).toString();
            }
        };
    }
    
    public Converter<Long, EmpType> ApplicationConversionServiceFactoryBean.getIdToEmpTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.spt.workshop1.domain.EmpType>() {
            public com.spt.workshop1.domain.EmpType convert(java.lang.Long id) {
                return EmpType.findEmpType(id);
            }
        };
    }
    
    public Converter<String, EmpType> ApplicationConversionServiceFactoryBean.getStringToEmpTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.spt.workshop1.domain.EmpType>() {
            public com.spt.workshop1.domain.EmpType convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), EmpType.class);
            }
        };
    }
    
    public Converter<Employee, String> ApplicationConversionServiceFactoryBean.getEmployeeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.spt.workshop1.domain.Employee, java.lang.String>() {
            public String convert(Employee employee) {
                return new StringBuilder().append(employee.getFirstName()).append(' ').append(employee.getLastName()).append(' ').append(employee.getAge()).append(' ').append(employee.getBirthDay()).toString();
            }
        };
    }
    
    public Converter<Long, Employee> ApplicationConversionServiceFactoryBean.getIdToEmployeeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.spt.workshop1.domain.Employee>() {
            public com.spt.workshop1.domain.Employee convert(java.lang.Long id) {
                return Employee.findEmployee(id);
            }
        };
    }
    
    public Converter<String, Employee> ApplicationConversionServiceFactoryBean.getStringToEmployeeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.spt.workshop1.domain.Employee>() {
            public com.spt.workshop1.domain.Employee convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Employee.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAddressToStringConverter());
        registry.addConverter(getIdToAddressConverter());
        registry.addConverter(getStringToAddressConverter());
        registry.addConverter(getEmpTypeToStringConverter());
        registry.addConverter(getIdToEmpTypeConverter());
        registry.addConverter(getStringToEmpTypeConverter());
        registry.addConverter(getEmployeeToStringConverter());
        registry.addConverter(getIdToEmployeeConverter());
        registry.addConverter(getStringToEmployeeConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}