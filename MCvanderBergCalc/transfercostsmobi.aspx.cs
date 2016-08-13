﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace MCvanderBergCalc
{
    public partial class transfercostsmobi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                resetall();
                lblError.Visible = false;
            }
        }

        private void resetall()
        {


            txtBondAmount.Text = "0.00";
            txtPurchasePrice.Text = "0.00";
            lblTransferFee.Text = "0.00";
            lblVatOnTransferFee.Text = "0.00";
            lblTransferDuty.Text = "0.00";
            lblDeedsOfficeRegistrationfee.Text = "0.00";
            lblDeedsOfficeSearchFee.Text = "0.00";
            lblVendorSoftwarePackageFee.Text = "0.00";
            lblFicaFee.Text = "0.00";
            lblPostagePetties.Text = "0.00";
            lblBankAdminFee.Text = "0.00";
            lblDeedsOfficeSearchBond.Text = "0.00";
            lblVendorSoftwarePakageBond.Text = "0.00";
            lblPostPettiesBond.Text = "0.00";
            lblBondRegistrationFee.Text = "0.00";
            lblVATregistrationFee.Text = "0.00";
            lblTotalTransferCost.Text = "0.00";
            lblDeedsOfficeBond.Text = "0.00";
            lblTotalBondCost.Text = "0.00";
            lblTotalEstimate.Text = "0.00";
            lblSumbitTransfer.Text = "0.00";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            double PurchasePrice;
            bool isNumerica = double.TryParse(txtPurchasePrice.Text.Replace(",", ""), out PurchasePrice);
            Cache.Insert("PurchasePrice", PurchasePrice);
            double BondAmount;
            bool isNumericb = double.TryParse(txtBondAmount.Text.Replace(",", ""), out BondAmount);
            Cache.Insert("Bbondamount", BondAmount);

            if (isNumerica == false || isNumericb == false)
            {
                lblError.Visible = true;
            }
            else
            {
                lblError.Visible = false;

                double transfercosts = 0.00;
                double transferfee = calculateTransferFees(PurchasePrice);
                Cache.Insert("Ttransferfee", transferfee);
                transfercosts += transferfee;
                lblTransferFee.Text = transferfee.ToString("#,##0.00", CultureInfo.InvariantCulture);

                lblVatOnTransferFee.Text = calculateVatOnTransferFee(transferfee).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateVatOnTransferFee(transferfee);
                Cache.Insert("Tvat", calculateVatOnTransferFee(transferfee));

                lblDeedsOfficeSearchFee.Text = calculateDeedsOfficeSearchFee(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateDeedsOfficeSearchFee(PurchasePrice);
                Cache.Insert("Tdeedssearch", calculateDeedsOfficeSearchFee(PurchasePrice));

                lblVendorSoftwarePackageFee.Text = calculateVendorSoftwarePackageFee(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateVendorSoftwarePackageFee(PurchasePrice);
                Cache.Insert("Tvendor", calculateVendorSoftwarePackageFee(PurchasePrice));

                lblFicaFee.Text = calculateFICAfee(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateFICAfee(PurchasePrice);
                Cache.Insert("Tfica", calculateFICAfee(PurchasePrice));

                lblPostagePetties.Text = calculatePostagePetties(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculatePostagePetties(PurchasePrice);
                Cache.Insert("Tpostage", calculatePostagePetties(PurchasePrice));

                lblSumbitTransfer.Text = calculateSubmittingTransferFee(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateSubmittingTransferFee(PurchasePrice);
                Cache.Insert("Tsubmit", calculateSubmittingTransferFee(PurchasePrice));


                lblDeedsOfficeRegistrationfee.Text = calculateTransferDeedsFee(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateTransferDeedsFee(PurchasePrice);
                Cache.Insert("Tdeedsregistration", calculateTransferDeedsFee(PurchasePrice));

                lblTransferDuty.Text = calculateTransferDuty(PurchasePrice).ToString("#,##0.00", CultureInfo.InvariantCulture);
                transfercosts += calculateTransferDuty(PurchasePrice);
                Cache.Insert("Ttransferduty", calculateTransferDuty(PurchasePrice));

                lblTotalTransferCost.Text = transfercosts.ToString("#,##0.00", CultureInfo.InvariantCulture);
                Cache.Insert("Ttotal", transfercosts);

                double bondcosts = 0.00;
                double bondRegistrationFee = calculateTransferFees(BondAmount);
                lblBondRegistrationFee.Text = bondRegistrationFee.ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += bondRegistrationFee;
                Cache.Insert("Bbondregistrationfee", bondRegistrationFee);

                lblVATregistrationFee.Text = calculateVatOnRegistrationFee(bondRegistrationFee).ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += calculateVatOnRegistrationFee(bondRegistrationFee);
                Cache.Insert("Bvat", calculateVatOnRegistrationFee(bondRegistrationFee));

                lblBankAdminFee.Text = calculateFICAfee(BondAmount).ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += calculateFICAfee(BondAmount);
                Cache.Insert("BdeedsSearch", calculateFICAfee(BondAmount));

                lblVendorSoftwarePakageBond.Text = calculateVendorSoftwarePakageBond(BondAmount).ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += calculateVendorSoftwarePakageBond(BondAmount);
                Cache.Insert("Bvendor", calculateVendorSoftwarePakageBond(BondAmount));

                lblDeedsOfficeSearchBond.Text = calculateDeedsOfficeSearch(BondAmount).ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += calculateDeedsOfficeSearch(BondAmount);
                Cache.Insert("Bbankadmin", calculateDeedsOfficeSearch(BondAmount));

                lblPostPettiesBond.Text = calculatePostPettiesBond(BondAmount).ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += calculatePostPettiesBond(BondAmount);
                Cache.Insert("Bpostage", calculatePostPettiesBond(BondAmount));

                lblDeedsOfficeBond.Text = calculateTransferDeedsFeeBond(BondAmount).ToString("#,##0.00", CultureInfo.InvariantCulture);
                bondcosts += calculateTransferDeedsFeeBond(BondAmount);
                Cache.Insert("Bdeedsofficeregistration", calculateTransferDeedsFeeBond(BondAmount));

                lblTotalBondCost.Text = bondcosts.ToString("#,##0.00", CultureInfo.InvariantCulture);
                Cache.Insert("Btotal", bondcosts);

                lblTotalEstimate.Text = (transfercosts + bondcosts).ToString("#,##0.00", CultureInfo.InvariantCulture);
                Cache.Insert("TOTAL", transfercosts + bondcosts);
            }
        }

        private Double calculatePostPettiesBond(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 969.00; }
            return fee;
        }

        private Double calculateVendorSoftwarePakageBond(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 114.00; }
            return fee;
        }

        private Double calculateDeedsOfficeSearch(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 342.00; }
            return fee;
        }

        private Double calculateBankAdminFee(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 456.00; }
            return fee;
        }

        private Double calculateDeedsOfficeSearchFee(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 342.00; }
            return fee;
        }

        private Double calculateSubmittingTransferFee(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 399.00; }
            return fee;
        }

        private Double calculateVendorSoftwarePackageFee(double BondAmount)
        {
            double fee = 0.00;
            if (BondAmount == 0)
            { fee = 0.00; }
            else
            { fee = 114.00; }
            return fee;

        }

        private Double calculateFICAfee(double purchasePrice)
        {
            double fee = 0.00;
            if (purchasePrice == 0)
            { fee = 0.00; }
            else
            { fee = 570.00; }
            return fee;
        }

        private Double calculatePostagePetties(double purchasePrice)
        {
            double fee = 0.00;
            if (purchasePrice == 0)
            { fee = 0.00; }
            else
            { fee = 969.00; }
            return fee;
        }

        private Double calculateTransferDeedsFeeBond(Double bondPrice)
        {
            if (bondPrice > 0 && bondPrice <= 150000)
                return 340;
            if (bondPrice > 150000 && bondPrice <= 300000)
                return 380;
            if (bondPrice > 300000 && bondPrice <= 600000)
                return 550;
            if (bondPrice > 600000 && bondPrice <= 800000)
                return 770;
            if (bondPrice > 800000 && bondPrice <= 1000000)
                return 880;
            if (bondPrice > 1000000 && bondPrice <= 2000000)
                return 990;
            if (bondPrice > 2000000 && bondPrice <= 4000000)
                return 1370;
            if (bondPrice > 4000000 && bondPrice <= 6000000)
                return 1660;
            if (bondPrice > 6000000 && bondPrice <= 8000000)
                return 1980;
            if (bondPrice > 8000000 && bondPrice <= 10000000)
                return 2310;
            if (bondPrice > 10000000 && bondPrice <= 15000000)
                return 2750;
            if (bondPrice > 15000000 && bondPrice <= 20000000)
                return 3310;
            if (bondPrice > 20000000 && bondPrice <= 30000000)
                return 3850;
            if (bondPrice > 30000000)
                return 5500;

            return 0;
        }

        private Double calculateTransferDeedsFee(Double purchasePrice)
        {
            if (purchasePrice > 0 && purchasePrice <= 100000)
                return 35;
            if (purchasePrice > 100000 && purchasePrice <= 150000)
                return 75;
            if (purchasePrice > 150000 && purchasePrice <= 300000)
                return 440;
            if (purchasePrice > 300000 && purchasePrice <= 600000)
                return 550;
            if (purchasePrice > 600000 && purchasePrice <= 800000)
                return 770;
            if (purchasePrice > 800000 && purchasePrice <= 1000000)
                return 880;
            if (purchasePrice > 1000000 && purchasePrice <= 2000000)
                return 990;
            if (purchasePrice > 2000000 && purchasePrice <= 4000000)
                return 1200;
            if (purchasePrice > 4000000 && purchasePrice <= 6000000)
                return 1650;
            if (purchasePrice > 6000000 && purchasePrice <= 8000000)
                return 1980;
            if (purchasePrice > 8000000 && purchasePrice <= 10000000)
                return 2310;
            if (purchasePrice > 10000000 && purchasePrice <= 15000000)
                return 2750;
            if (purchasePrice > 15000000 && purchasePrice <= 20000000)
                return 3300;
            if (purchasePrice > 20000000)
                return 4400;

            return 0;
        }

        private Double calculateTransferDuty(Double purchasePrice)
        {
            if (purchasePrice > 0 && purchasePrice <= 750000)
                return 0;
            if (purchasePrice > 750000 && purchasePrice <= 1250000)
                return (purchasePrice - 750000.00) * 0.03;
            if (purchasePrice > 1250000 && purchasePrice <= 1750000)
                return 15000.00 + ((purchasePrice - 1250000.00) * 0.06);
            if (purchasePrice > 1750000 && purchasePrice <= 2250000)
                return 45000.00 + ((purchasePrice - 1750000.00) * 0.08);
            if (purchasePrice > 2250000 && purchasePrice <= 10000000)
                return 85000 + ((purchasePrice - 2250000) * 0.11);
            if (purchasePrice > 10000000)
                return 937500 + ((purchasePrice - 10000000) * 0.13);

            return 0;
        }

        private double calculateVatOnTransferFee(Double transferFee)
        {
            return transferFee * 0.14;
        }

        private Double bondRegistrationFees(Double bondAmount)
        {
            const double price0to100 = 3360.00;
            const double price100to125 = 3500.00;
            const double price125to150 = 3625.00;
            const double price150to175 = 3900.00;
            const double price175to200 = 4030.00;
            const double price200to250 = 4435.00;
            const double price250to300 = 4970.00;
            const double price300to350 = 5510.00;
            const double price350to400 = 6180.00;
            const double price400to450 = 6720.00;
            const double price450to500 = 7260.00;
            const double factor5to10 = 1180.00;
            const double factor10to500 = 590.00;
            const double factor500plus = 295.00;

            Double fee = 0.00;
            if (bondAmount > 0 && bondAmount <= 100000)
                fee = price0to100;
            else if (bondAmount > 100000 && bondAmount <= 125000)
                fee = price100to125;
            else if (bondAmount > 125000 && bondAmount <= 150000)
                fee = price125to150;
            else if (bondAmount > 150000 && bondAmount <= 175000)
                fee = price150to175;
            else if (bondAmount > 175000 && bondAmount <= 200000)
                fee = price175to200;
            else if (bondAmount > 200000 && bondAmount <= 250000)
                fee = price200to250;
            else if (bondAmount > 250000 && bondAmount <= 300000)
                fee = price250to300;
            else if (bondAmount > 300000 && bondAmount <= 350000)
                fee = price300to350;
            else if (bondAmount > 350000 && bondAmount <= 400000)
                fee = price350to400;
            else if (bondAmount > 400000 && bondAmount <= 450000)
                fee = price400to450;
            else if (bondAmount > 450000 && bondAmount <= 500000)
                fee = price450to500;
            else
            {
                Int32 parts5to10 = 0;
                Int32 parts10to500 = 0;
                Int32 parts500Plus = 0;

                if (bondAmount > 500000 && bondAmount < 1000001)
                {
                    parts5to10 = Convert.ToInt32(Math.Ceiling((double)((bondAmount - 500000) / 100000.000000)));
                }

                if (bondAmount > 1000000 && bondAmount < 5000001)
                {
                    parts5to10 = 5;
                    parts10to500 = Convert.ToInt32(Math.Ceiling((double)((bondAmount - 1000000) / 100000.000000)));
                }

                if (bondAmount > 5000000)
                {
                    parts5to10 = 5;
                    parts10to500 = 40;
                    parts500Plus = Convert.ToInt32(Math.Ceiling((double)((bondAmount - 5000000) / 100000.000000)));
                }

                fee = price450to500 + (parts5to10 * factor5to10) + (parts10to500 * factor10to500) + (parts500Plus * factor500plus);
            }

            if (bondAmount == 0)
            {
                fee = 0.00;
            }
            return fee;
        }

        private double calculateVatOnRegistrationFee(Double BondRegistrationFee)
        {
            return BondRegistrationFee * 0.14;
        }

        private Double calculateTransferFees(Double purchasePrice)
        {
            const double price0to100 = 4300.00;
            const double price100to150 = 4950.00;
            const double price150to200 = 5600.00;
            const double price200to250 = 6250.00;
            const double price250to300 = 6900.00;
            const double price300to350 = 7550.00;
            const double price350to400 = 8200.00;
            const double price400to450 = 8850.00;
            const double price450to500 = 9500.00;
            const double price500to600 = 10800.00;
            const double price600to700 = 12100.00;
            const double price700to800 = 13400.00;
            const double price800to900 = 14700.00;
            const double price900to1000 = 16000.00;
            const double factor5to10 = 1160.00;
            const double factor10to500 = 580.00;
            const double factor500plus = 290.00;

            Double fee = 0.00;
            if (purchasePrice > 0 && purchasePrice <= 100000)
                fee = price0to100;
            else if (purchasePrice > 100000 && purchasePrice <= 150000)
                fee = price100to150;
            else if (purchasePrice > 150000 && purchasePrice <= 200000)
                fee = price150to200;
            else if (purchasePrice > 200000 && purchasePrice <= 250000)
                fee = price200to250;
            else if (purchasePrice > 250000 && purchasePrice <= 300000)
                fee = price250to300;
            else if (purchasePrice > 300000 && purchasePrice <= 350000)
                fee = price300to350;
            else if (purchasePrice > 350000 && purchasePrice <= 400000)
                fee = price350to400;
            else if (purchasePrice > 400000 && purchasePrice <= 450000)
                fee = price400to450;
            else if (purchasePrice > 450000 && purchasePrice <= 500000)
                fee = price450to500;
            else if (purchasePrice > 400000 && purchasePrice <= 450000)
                fee = price400to450;
            else if (purchasePrice > 450000 && purchasePrice <= 500000)
                fee = price450to500;
            else if (purchasePrice > 500000 && purchasePrice <= 600000)
                fee = price500to600;
            else if (purchasePrice > 600000 && purchasePrice <= 700000)
                fee = price600to700;
            else if (purchasePrice > 700000 && purchasePrice <= 800000)
                fee = price700to800;
            else if (purchasePrice > 800000 && purchasePrice <= 900000)
                fee = price800to900;
            else if (purchasePrice > 900000 && purchasePrice <= 1000000)
                fee = price900to1000;
            else
            {
                Int32 parts10to500 = 0;
                Int32 parts500Plus = 0;

                if (purchasePrice > 1000000 && purchasePrice <= 5000000)
                {
                    parts10to500 = 16000 + Convert.ToInt32(Math.Ceiling((double)(650 * (purchasePrice - 1000000) / 100000.000000)));
                }


                if (purchasePrice > 5000000)
                {
                    parts500Plus = 42000 + Convert.ToInt32(Math.Ceiling((double)(325 * (purchasePrice - 5000000) / 100000.000000)));
                }

                fee = parts10to500 + parts500Plus;
            }

            if (purchasePrice == 0)
            {
                fee = 0.00;
            }
            return fee;
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            resetall();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double test = Convert.ToDouble(Cache["PurchasePrice"]);
            SendTransferCost mysend = new SendTransferCost();
            mysend.sendmail(txtemail.Text);
        }
    }
}