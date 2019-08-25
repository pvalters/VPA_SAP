create table DWSKey.DimGuarantee(
	  ETLProcessID                      unsigned integer not null
	, ETLProcessRunID                   unsigned integer not null
	, ETLProcessDateID                  unsigned integer not null
	, GuaranteeKey                      unsigned integer not null
	, GuaranteeID                       unsigned integer not null
	, StartDateID                       unsigned integer not null
	, EndDateID                         unsigned integer not null
	, SourceSystemCode                  varchar(10)      not null
	, AgreementNumber                   varchar(40)      not null
	, GuaranteeStartDate                date             not null
	, GuaranteeMaturityDate             date             not null
	, GuaranteeCurrency                 varchar(3)       not null
	, ProvisionCurrency                 varchar(3)       not null	
	, ProductNumber                     varchar(20)      not null
	, PortfolioCode                     varchar(60)      not null
	, BeneficiaryPortfolioCode          varchar(60)      not null
	, GuaranteeStatus                   varchar(50)      not null
	, GLAccount                         varchar(15)      not null
	, IsCancellable                     varchar(3)       not null
	, IsDefaulted                       varchar(3)       not null	
	, DefaultDate			    date             not null
	, AccountNumber                     varchar(10)      not null
	, RiskStageCode                     varchar(50)      not null
	, RiskStageName                     varchar(200)     not null
	, ContractNumber                    varchar(40)      not null
	, AdjustedRiskStageCode             varchar(50)      not null
	, AdjustedRiskStageName             varchar(200)     not null
	, OpenAmount	                    decimal(18,4)    not null
	, UncommittedFlag	                varchar(10)      not null	
	, ActualExpiryDate	                date             not null
	, OriginalSource                    varchar(6)       not null
	, LBCreditNumber                    varchar(40)      not null
	, PaidAmountDueDebtGLAccount        varchar(15)      not null
   	, MigratedGuaranteeCode             varchar(40)      not null
    	, MigrationDate                     date             not null
    	, MigrationDateID                   unsigned integer not null
    	, MigratedEntity                    varchar(4)       not null
	, constraint pk_DWSKey_DimGuarantee    primary key (GuaranteeID)
	, constraint uc_DWSKey_DimGuarantee_DK unique (GuaranteeKey, StartDateID)
);

alter table DWSKey.DimGuarantee alter GuaranteeID drop default;

insert into DWSKey.DimGuarantee(
  ETLProcessID             
, ETLProcessRunID          
, ETLProcessDateID         
, GuaranteeKey             
, GuaranteeID              
, StartDateID              
, EndDateID                             
, SourceSystemCode                 
, AgreementNumber          
, GuaranteeStartDate     
, GuaranteeMaturityDate  
, GuaranteeCurrency             
, ProvisionCurrency    
, ProductNumber            
, PortfolioCode   
, BeneficiaryPortfolioCode 
, GuaranteeStatus      
, GLAccount                
, IsCancellable       
, IsDefaulted
, DefaultDate      
, AccountNumber
, RiskStageCode
, RiskStageName
, ContractNumber
, AdjustedRiskStageCode
, AdjustedRiskStageName
, OpenAmount
, UncommittedFlag
, ActualExpiryDate
, OriginalSource
, LBCreditNumber
, PaidAmountDueDebtGLAccount
, MigratedGuaranteeCode
, MigrationDate
, MigrationDateID
, MigratedEntity
 )
select 
  0 ETLProcessID             
, 0 ETLProcessRunID          
, 0 ETLProcessDateID         
, 0 GuaranteeKey             
, 0 GuaranteeID              
, 19000101 StartDateID              
, 99991231 EndDateID                                
,'N/F' SourceSystemCode                
,'N/F' AgreementNumber          
,'1900-01-01' GuaranteeStartDate    
,'9999-12-31' GuaranteeMaturityDate 
,'N/F' GuaranteeCurrency           
,'N/F' ProvisionCurrency    
,'N/F' ProductNumber            
,'N/F' PortfolioCode   
,'N/F' BeneficiaryPortfolioCode 
,'N/F' GuaranteeStatus      
,'N/F' GLAccount                
,'N/F' IsCancellable       
,'N/F' IsDefaulted
,'9999-12-31' DefaultDate         
,'N/F' AccountNumber   
,'N/F' RiskStageCode
,'N/F' RiskStageName
,'N/F' ContractNumber
,'N/F' AdjustedRiskStageCode
,'N/F' AdjustedRiskStageName
, 0 OpenAmount
,'N/F' UncommittedFlag	
,'9999-12-31' ActualExpiryDate
,'N/F' OriginalSource
,'N/F' LBCreditNumber
,'N/F' PaidAmountDueDebtGLAccount
,'N/F' MigratedGuaranteeCode
,'9999-12-31' MigrationDate
,99991231 MigrationDateID
,'N/F' MigratedEntity
union
select 
  0 ETLProcessID             
, 0 ETLProcessRunID          
, 0 ETLProcessDateID         
, 1 GuaranteeKey             
, 1 GuaranteeID              
, 19000101 StartDateID              
, 99991231 EndDateID                                  
,'N/D' SourceSystemCode                   
,'N/D' AgreementNumber          
,'1900-01-01' GuaranteeStartDate    
,'9999-12-31' GuaranteeMaturityDate  
,'N/D' GuaranteeCurrency           
,'N/D' ProvisionCurrency    
,'N/D' ProductNumber            
,'N/D' PortfolioCode   
,'N/D' BeneficiaryPortfolioCode 
,'N/D' GuaranteeStatus      
,'N/D' GLAccount                
,'N/D' IsCancellable       
,'N/D' IsDefaulted 
,'9999-12-31' DefaultDate         
,'N/D' AccountNumber
,'N/D' RiskStageCode
,'N/D' RiskStageName
,'N/D' ContractNumber
,'N/D' AdjustedRiskStageCode
,'N/D' AdjustedRiskStageName
, 0 OpenAmount
,'N/D' UncommittedFlag	
,'9999-12-31' ActualExpiryDate
,'N/D' OriginalSource
,'N/D' LBCreditNumber
,'N/D' PaidAmountDueDebtGLAccount
,'N/D' MigratedGuaranteeCode
,'9999-12-31' MigrationDate
,99991231 MigrationDateID
,'N/D' MigratedEntity

--alter table DWSKey.DimGuarantee alter GuaranteeID default autoincrement;
commit;