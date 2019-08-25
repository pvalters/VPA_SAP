CREATE TABLE DWExtract.PLT_TRADE_FINANCE
( ETLProcessID                     unsigned int not null
 ,ETLProcessRunID                  unsigned int not null  
 ,ETLProcessDateID                 unsigned int not null
 ,Entity                           varchar(4)   not null
 ,CountryID	                   varchar(2)
 ,TradeFinanceID	           varchar(40)
 ,ContractID	                   varchar(40)
 ,AgreementNumber	           varchar(40)
 ,Description	                   varchar(100)
 ,Beneficiary	                   varchar(100)
 ,Currency	                   varchar(3)
 ,CreationDate	                   date
 ,OpenDate	                   date
 ,DueDate	                   date
 ,CIF	                           varchar(6)
 ,RepaymentAccount	           varchar(10)
 ,OpenAmount	                   decimal(18,4)
 ,LiabilityGL	                   varchar(15)
 ,LiabilityAmount	           decimal(18,4)
 ,UsageFeeAccruableRateType	   varchar(1)
 ,UsageFeeAccruableRate	           decimal(18,4)
 ,UsageFeeAccruableDebtGL	   varchar(15)
 ,UsageFeeAccruableProfitGL	   varchar(15)
 ,UsageFeeAccruableDebt	           decimal(18,4)
 ,UsageFeeAccruableAccrued	   decimal(18,10)
 ,UsageFeeFixedProfitGL	           varchar(15)
 ,UsageFeeFixedBalance	           decimal(18,4)
 ,DaysInYear	                   integer
 ,Status	                   varchar(15)
 ,ProductCode	                   varchar(15)
 ,TradeFinanceType	           varchar(20)
 ,PenaltyDebtGL	                   varchar(15)
 ,PenaltyProfitGL	           varchar(15)
 ,PenaltyRate	                   decimal(18,4)
 ,PenaltyAmount	                   decimal(18,4)
 ,OffBalanceProvisionGL	           varchar(15)
 ,OffBalanceProvisionAmount	   decimal(18,4)
 ,RelatedPoint	                   char(10)
 ,RelatedDepartment	           char(10)
 ,SellPoint	                   char(10)
 ,SellDepartment	           char(10)
 ,InterestProvisionsGL	           varchar(15)
 ,InterestProvisionsAmount	   decimal(18,4)
 ,LimitFeeGL	                   varchar(15)
 ,LimitFeeProfitGL	           varchar(15)
 ,LimitFee	                   decimal(18,4)
 ,OtherFeeProfitGL	           varchar(15)
 ,OtherFee	                   decimal(18,4)
 ,AmendmentFeeProfitGL	           varchar(15)
 ,AmendmentFee	                   decimal(18,4)
 ,IssuingFeeProfitGL	           varchar(15)
 ,IssuingFee	                   decimal(18,4)
 ,UncommittedFlag	           varchar(10)	
 ,ActualExpiryDate	           date
 ,OriginalSource                   char(6)
 ,LbCreditID                       varchar(40)
 ,PaidAmountDue                    decimal(18,4)
 ,PaidAmountDueDebtGL              varchar(15)
 ,PaidAmountDueOverdueNumberOfDays integer
 ,MigratedDealCode		   varchar(40)
 ,MigrationDate			   date
 ,MigratedEntity		   varchar(4)
);