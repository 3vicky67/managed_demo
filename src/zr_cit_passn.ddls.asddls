@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Child entity for Passion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zr_cit_passn 
  as select from zcit_passn
  association to parent zr_cit_celeb as _Celebrity on $projection.CelebId = _Celebrity.Id
{
  key passion_id as PassionId,
  celeb_id as CelebId,
  passion_name as PassionName,
  description as Description,
  locallastchangedat as Locallastchangedat,
  
  _Celebrity
}
