create table DW.DimGuarantee (
   ETLProcessID                 unsigned int                   not null,
   ETLProcessRunID              unsigned int                   not null,
   ETLProcessDateID             unsigned int                   not null,
   GuaranteeID                  unsigned int                   not null,
   GuaranteeKey                 unsigned int                   not null,
   StartDateID                  unsigned int                   not null,
   EndDateID                    unsigned int                   not null,
   Entity                       varchar(4)                     not null,
   SourceSystemID               unsigned int                   not null,
   GuaranteeCode                varchar(40)                    not null,
   AgreementNumber              varchar(50)                    not null,
   GuaranteeStartDateID         unsigned int                   not null,
   GuaranteeStartDate           date                           not null,
   GuaranteeMaturityDateID      unsigned int                   not null,
   GuaranteeMaturityDate        date                           not null,
   CurrencyKey                  unsigned int                   not null,
   ProvisionCurrencyKey         unsigned int                   not null,
   ProductKey                   unsigned int                   not null,
   CustomerPortfolioKey         unsigned int                   not null,
   BeneficiaryPortfolioKey      unsigned int                   not null,
   GuaranteeStatusID            unsigned int                   not null,
   GLKey                        unsigned int                   not null,
   IsCancellableID              unsigned int                   not null,
   IsCancellableDispN           varchar(3)                     not null,
   IsDefaultedID                unsigned int                   not null,
   IsDefaultedDispN             varchar(3)                     not null,
   DefaultDateID                unsigned int                   not null,
   DepositKey                   unsigned int                   not null,
   RiskStageID                  unsigned int                   not null,
   RiskStageCode                varchar(50)                    not null,
   RiskStageName                varchar(200)                   not null,
   ContractNumber               varchar(40)                    not null,
   AdjustedRiskStageID          unsigned int                   not null,
   AdjustedRiskStageCode        varchar(50)                    not null,
   AdjustedRiskStageName        varchar(200)                   not null,
   UncommittedFlag	        varchar(10)                    not null,
   ActualExpiryDateID           unsigned int                   not null,
   ActualExpiryDate             date                           not null,
   OriginalSource               varchar(6)                     not null,
   LBCreditNumber               varchar(40)                    not null,
   OpenAmount	                decimal(18,4)                  not null,
   PaidAmountDueDebtGLKey       unsigned int                   not null,
   MigratedGuaranteeCode        varchar(40)                    not null,
   MigrationDate                date                           not null,
   MigrationDateID              unsigned integer               not null,
   MigratedEntity               varchar(4)                     not null

  , CONSTRAINT PK_Key PRIMARY KEY (GuaranteeID)                                                    
  , CONSTRAINT NK_Key UNIQUE (GuaranteeKey, Entity, SourceSystemID, GuaranteeCode, StartDateID)
);
 
 insert into DW.DimGuarantee(                                                                                                                                    
    ETLProcessID                                                                                                                                                
  , ETLProcessRunID                                                                                                                                             
  , ETLProcessDateID                                                                                                                                            
  , Entity                                                                                                                                                      
  , StartDateID                                                                                                                                                 
  , EndDateID                                                                                                                                                   
  , GuaranteeID                                                                                                                                                 
  , GuaranteeKey                                                                                                                                                
  , SourceSystemID                                                                                                                                              
  , GuaranteeCode                                                                                                                                               
  , AgreementNumber                                                                                                                                             
  , GuaranteeStartDateID                                                                                                                                        
  , GuaranteeStartDate                                                                                                                                          
  , GuaranteeMaturityDateID                                                                                                                                     
  , GuaranteeMaturityDate                                                                                                                                       
  , CurrencyKey                                                                                                                                                 
  , ProvisionCurrencyKey                                                                                                                                        
  , ProductKey                                                                                                                                                  
  , CustomerPortfolioKey                                                                                                                                        
  , BeneficiaryPortfolioKey                                                                                                                                     
  , GuaranteeStatusID                                                                                                                                           
  , GLKey                                                                                                                                                       
  , IsCancellableID                                                                                                                                             
  , IsCancellableDispN                                                                                                                                          
  , IsDefaultedID                                                                                                                                               
  , IsDefaultedDispN                                                                                                                                            
  , DefaultDateID                                                                                                                                               
  , DepositKey
  , RiskStageID  
  , RiskStageCode
  , RiskStageName
  , ContractNumber
  , AdjustedRiskStageID
  , AdjustedRiskStageCode
  , AdjustedRiskStageName
  , UncommittedFlag
  , ActualExpiryDateID
  , ActualExpiryDate
  , OriginalSource
  , LBCreditNumber
  , OpenAmount
  , PaidAmountDueDebtGLKey
  , MigratedGuaranteeCode
  , MigrationDate
  , MigrationDateID
  , MigratedEntity
)                                                                                                                                                               
select                                                                                                                                                          
    0               as ETLProcessID                                                                                                                                 
  , 0               as ETLProcessRunID                                                                                                                              
  , 19000101        as ETLProcessDateID                                                                                                                             
  , 'N/F'           as Entity                                                                                                                                       
  , 19000101        as StartDateID                                                                                                                                  
  , 99991231        as EndDateID                                                                                                                                    
  , 0               as GuaranteeID                                                                                                                                  
  , 0               as GuaranteeKey                                                                                                                                 
  , 0               as SourceSystemID                                                                                                                               
  , 'N/F'           as GuaranteeCode                                                                                                                                
  , 'N/F'           as AgreementNumber                                                                                                                              
  , 19000101        as GuaranteeStartDateID                                                                                                                         
  , ymd(1900,1,1)   as GuaranteeStartDate                                                                                                                           
  , 99991231        as GuaranteeMaturityDateID                                                                                                                      
  , ymd(9999,12,31) as GuaranteeMaturityDate                                                                                                                        
  , 0               as CurrencyKey                                                                                                                                  
  , 0               as ProvisionCurrencyKey                                                                                                                         
  , 0               as ProductKey                                                                                                                                   
  , 0               as CustomerPortfolioKey                                                                                                                         
  , 0               as BeneficiaryPortfolioKey                                                                                                                      
  , 0               as GuaranteeStatusID                                                                                                                            
  , 0               as GLKey                                                                                                                                        
  , 0               as IsCancellableID                                                                                                                              
  , 'N/F'           as IsCancellableDispN                                                                                                                           
  , 0               as IsDefaultedID                                                                                                                                
  , 'N/F'           as IsDefaultedDispN                                                                                                                             
  , 99991231        as DefaultDateID                                                                                                                                
  , 0               as DepositKey
  , 0               as RiskStageID
  , 'N/F'           as RiskStageCode
  , 'N/F'           as RiskStageName
  , 'N/F'           as ContractNumber
  , 0               as AdjustedRiskStageID
  , 'N/F'           as AdjustedRiskStageCode
  , 'N/F'           as AdjustedRiskStageName
  , 'N/D'           as UncommittedFlag
  , 0               as ActualExpiryDateID
  , ymd(1900,1,1)   as ActualExpiryDate
  , 'N/D'           as OriginalSource
  , 'N/D'           as LBCreditNumber
  , 0				as OpenAmount
  , 0 				as PaidAmountDueDebtGLKey
  , 'N/F'           as MigratedGuaranteeCode
  , ymd(9999,12,31) as MigrationDate
  , 99991231        as MigrationDateID
  , 'N/F'           as MigratedEntity
union                                                                                                                                                           
select                                                                                                                                                          
    0               as ETLProcessID                                                                                                                                          
  , 0               as ETLProcessRunID                                                                                                                                       
  , 19000101        as ETLProcessDateID                                                                                                                                      
  , 'N/D'           as Entity                                                                                                                                                
  , 19000101        as StartDateID                                                                                                                                           
  , 99991231        as EndDateID                                                                                                                                             
  , 1               as GuaranteeID                                                                                                                                           
  , 1               as GuaranteeKey                                                                                                                                          
  , 1               as SourceSystemID                                                                                                                                        
  , 'N/D'           as GuaranteeCode                                                                                                                                         
  , 'N/D'           as AgreementNumber                                                                                                                                       
  , 19000101        as GuaranteeStartDateID                                                                                                                                  
  , ymd(1900,1,1)   as GuaranteeStartDate                                                                                                                                    
  , 99991231        as GuaranteeMaturityDateID                                                                                                                               
  , ymd(9999,12,31) as GuaranteeMaturityDate                                                                                                                                 
  , 1               as CurrencyKey                                                                                                                                           
  , 1               as ProvisionCurrencyKey                                                                                                                                  
  , 1               as ProductKey                                                                                                                                            
  , 1               as CustomerPortfolioKey                                                                                                                                  
  , 1               as BeneficiaryPortfolioKey                                                                                                                               
  , 1               as GuaranteeStatusID                                                                                                                                     
  , 1               as GLKey                                                                                                                                                 
  , 1               as IsCancellableID                                                                                                                                       
  , 'N/D'           as IsCancellableDispN                                                                                                                                    
  , 0               as IsDefaultedID                                                                                                                                         
  , 'N/D'           as IsDefaultedDispN                                                                                                                                      
  , 99991231        as DefaultDateID                                                                                                                                         
  , 1               as DepositKey
  , 0               as RiskStageID
  , 'N/D'           as RiskStageCode
  , 'N/D'           as RiskStageName
  , 'N/D'           as ContractNumber
  , 0               as AdjustedRiskStageID
  , 'N/D'           as AdjustedRiskStageCode
  , 'N/D'           as AdjustedRiskStageName
  , 'N/D'           as UncommittedFlag
  , 0               as ActualExpiryDateID
  , ymd(1900,1,1)   as ActualExpiryDate
  , 'N/D'           as OriginalSource
  , 'N/D'           as LBCreditID  
  , 0		    as OpenAmount
  , 0 		    as PaidAmountDueDebtGLKey
  , 'N/D'           as MigratedGuaranteeCode
  , ymd(9999,12,31) as MigrationDate
  , 99991231        as MigrationDateID
  , 'N/D'           as MigratedEntity
;    
commit;