@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Celebrity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_cit_celeb as projection on zr_cit_celeb
{
  key Id,
  Name,
  Gender,
  Dateofbirth,
  Profession,
  Industry,
  Debutmovie,
  Famousmovie,
  @Semantics.amount.currencyCode: 'Currency'
  Networth,
  Currency,
  Salarypermovie,
  Awardscount,
  Nationality,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchangedat,
  
  _Passion : redirected to composition child zc_cit_passn
}
