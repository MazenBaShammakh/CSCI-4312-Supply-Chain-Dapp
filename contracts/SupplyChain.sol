// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SupplyChain {
    struct Registrations {
        uint256 id; // added id (just for consistencies)
        address userAddress;
        bytes username;
        UserCategory userCategory;
        bool isAuthenticated;
    }

    struct Account {
        uint256 id; // added id (just for consistencies)
        address userAddress;
        bytes username;
        UserCategory userCategory;
    }

    struct Product {
        uint256 id;
        bytes name;
        uint256 price;
        address owner;
    }

    struct Order {
        uint256 id;
        uint256[] productIds;
        uint256 totalPrice;
        uint256 expectedDelivery;
        bool isDelivered;
        address currentOwnership;
    }

    enum UserCategory {
        Seller,
        ShippingCompany,
        Carrier,
        Customs,
        Customer
    }

    address admin;
    uint256 registrationId;
    uint256 accountId;
    uint256 productId;
    uint256 orderId;

    mapping(uint256 => Registrations) registrations;
    mapping(uint256 => Account) accounts;
    mapping(uint256 => Product) products;
    mapping(uint256 => Order) orders;

    constructor() {
        admin = msg.sender;
        registrationId = 1;
        accountId = 1;
        productId = 1;
        orderId = 1;
    }
}
