@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Passion'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zc_cit_passn as projection on zr_cit_passn
{
  key PassionId,
  CelebId,
  PassionName,
  Description,
  Locallastchangedat,
  
  _Celebrity : redirected to parent zc_cit_celeb
}
