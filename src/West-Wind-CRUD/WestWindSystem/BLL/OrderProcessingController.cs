﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WestWindSystem.BLL
{
    public class OrderProcessingController
    {
        #region Query Methods
        public List<OutstandingOrder> LoadOrders(int supplierID)
        {
            //TODO: Implement LoadOrders
            throw new NotImplementedException();
        }

        public List<ShipperSelection> ListShippers()
        {
            //TODO: Implement ListShippers
            throw new NotImplementedException();
        }

        public SupplierSummary GetSuppiers(int supplierID)
        {
            //TODO: Implement GetSupplier
            throw new NotImplementedException();
        }
        #endregion

        #region Command Methods
        public void ShipORder(int orderId, ShippingDirections directions, List<ProductShipment> items)
        {
        //Validation of input:
        //OrderId must exist
        //Shipper must exist
        //Must have one or more items to ship
        //ProductIds must exist / valid
        //Quantities must be greater than 0 and less than the number / qty outstanding on the order
        //Freight charge is either null or a value greater than zero
        //Add a new Shipment to the database
        //Add new ManifestItem objects to the new shipment
        }
        #endregion
    }
}
