//namespace nameSpaceName;

context nameSpaceName {


    // customer.cds
    entity Customer {
        key ID        : UUID;
            name      : String;
            incidents : Association to many Incidents
                            on incidents.customer = $self;
            addresses : Composition of many Addresses
                            on addresses.customer = $self;
    }

    entity Incidents {
        key ID          : UUID;
            description : String;
            customer    : Association to Customer; // Incident refers to a Customer
    }
    // // customer.cds
    // entity Customer {
    //     key ID        : UUID;
    //     name          : String;
    //     addresses     : Composition of many Addresses on addresses.customer = $self;
    // }

    entity Addresses {
        key ID       : UUID;
            street   : String;
            city     : String;
            customer : Association to Customer; // Address is part of a Customer
    }

}

@cds.persistence.exists
@cds.persistence.table
entity CALCVIEW {
    key ID          : UUID;
        NAME        : String;
        ID_1        : UUID;
        STREET      : String;
        CITY        : String;
        CUSTOMER_ID : String;

}

@cds.persistence.exists
@cds.persistence.table
entity SQLVIEW {
    key CustomerID          : UUID;
        CustomerName        : String;
        IncidentID          : UUID;
        IncidentDescription : String;
        AddressID           : UUID;
        Street              : String;
        City                : String;
}
