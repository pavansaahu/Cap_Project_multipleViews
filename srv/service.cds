using nameSpaceName from '../db/schema';
using CALCVIEW from '../db/schema';
using SQLVIEW from '../db/schema';


service Customer {
    entity Customer        as projection on nameSpaceName.Customer;
    entity Incidents       as projection on nameSpaceName.Incidents;
    entity Addresses       as projection on nameSpaceName.Addresses;
    entity calculationView as projection on CALCVIEW;
    entity SQLQueryView    as projection on SQLVIEW;
}
