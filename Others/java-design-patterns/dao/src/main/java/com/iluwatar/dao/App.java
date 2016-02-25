/**
 * The MIT License
 * Copyright (c) 2014 Ilkka Seppälä
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package com.iluwatar.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

/**
 * 
 * Data Access Object (DAO) is an object that provides an abstract interface to some type of
 * database or other persistence mechanism. By mapping application calls to the persistence layer,
 * DAO provide some specific data operations without exposing details of the database. This
 * isolation supports the Single responsibility principle. It separates what data accesses the
 * application needs, in terms of domain-specific objects and data types (the public interface of
 * the DAO), from how these needs can be satisfied with a specific DBMS.
 * <p>
 * With the DAO pattern, we can use various method calls to retrieve/add/delete/update data without
 * directly interacting with the data. The below example demonstrates basic CRUD operations: select,
 * add, update, and delete.
 * 
 */
public class App {

  private static Logger log = Logger.getLogger(App.class);

  /**
   * Program entry point.
   * 
   * @param args command line args.
   */
  public static void main(final String[] args) {
    final CustomerDao customerDao = new CustomerDaoImpl(generateSampleCustomers());
    log.info("customerDao.getAllCustomers(): " + customerDao.getAllCustomers());
    log.info("customerDao.getCusterById(2): " + customerDao.getCustomerById(2));
    final Customer customer = new Customer(4, "Dan", "Danson");
    customerDao.addCustomer(customer);
    log.info("customerDao.getAllCustomers(): " + customerDao.getAllCustomers());
    customer.setFirstName("Daniel");
    customer.setLastName("Danielson");
    customerDao.updateCustomer(customer);
    log.info("customerDao.getAllCustomers(): " + customerDao.getAllCustomers());
    customerDao.deleteCustomer(customer);
    log.info("customerDao.getAllCustomers(): " + customerDao.getAllCustomers());
  }

  /**
   * Generate customers.
   * 
   * @return list of customers.
   */
  public static List<Customer> generateSampleCustomers() {
    final Customer customer1 = new Customer(1, "Adam", "Adamson");
    final Customer customer2 = new Customer(2, "Bob", "Bobson");
    final Customer customer3 = new Customer(3, "Carl", "Carlson");
    final List<Customer> customers = new ArrayList<>();
    customers.add(customer1);
    customers.add(customer2);
    customers.add(customer3);
    return customers;
  }
}
