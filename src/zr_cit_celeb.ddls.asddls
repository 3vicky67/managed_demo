@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity for Celebrity'
@Metadata.ignorePropagatedAnnotations: true

define root view entity zr_cit_celeb
  as select from zcit_celeb
  composition [0..*] of zr_cit_passn as _Passion
{
  key id            as Id,
  name              as Name,
  gender            as Gender,
  dateofbirth       as Dateofbirth,
  profession        as Profession,
  industry          as Industry,
  debutmovie        as Debutmovie,
  famousmovie       as Famousmovie,

  @Semantics.amount.currencyCode: 'Currency'
  networth          as Networth,

  @Semantics.amount.currencyCode: 'Currency'
  salarypermovie    as Salarypermovie,

  awardscount       as Awardscount,
  nationality       as Nationality,

  currency          as Currency,

  createdby         as Createdby,
  createdat         as Createdat,
  lastchangedby     as Lastchangedby,
  lastchangedat     as Lastchangedat,
  locallastchangedat as Locallastchangedat,

  _Passion
}
