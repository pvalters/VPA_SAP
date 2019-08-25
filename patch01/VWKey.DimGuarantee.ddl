create or replace view VWKey.DimGuarantee
as
select
	sk.ETLProcessID
	, sk.ETLProcessRunID
	, sk.ETLProcessDateID
	, sk.GuaranteeKey
	, sk.GuaranteeID
	, sk.StartDateID
	, sk.EndDateID
	, sk.SourceSystemCode
	, sk.AgreementNumber
	, sk.GuaranteeStartDate
	, sk.GuaranteeMaturityDate
	, sk.GuaranteeCurrency
	, sk.ProvisionCurrency
	, sk.ProductNumber
	, sk.PortfolioCode
	, sk.BeneficiaryPortfolioCode
	, sk.GuaranteeStatus
	, sk.GLAccount
	, sk.IsCancellable
	, sk.IsDefaulted
	, sk.DefaultDate
	, sk.AccountNumber
	, sk.RiskStageCode
	, sk.RiskStageName
	, sk.AdjustedRiskStageCode
    	, sk.AdjustedRiskStageName
	, sk.OpenAmount
	, sk.UncommittedFlag
	, sk.ActualExpiryDate
	, sk.OriginalSource
	, sk.LBCreditNumber
	, sk.PaidAmountDueDebtGLAccount
        , sk.MigratedGuaranteeCode
        , sk.MigrationDate
        , sk.MigrationDateID
        , sk.MigratedEntity
	, dk.GuaranteeCode
	, dk.Entity
from DWDKey.DimGuarantee as dk
inner join DWSKey.DimGuarantee as sk
	on dk.GuaranteeKey = sk.GuaranteeKey;