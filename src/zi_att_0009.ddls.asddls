@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Attachment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ATT_0009
  as select from zgy_att_0009
  association to parent ZI_STUDENT_0009 as _student on $projection.Id = _student.Id
{
  key attach_id              as AttachId,
      id                     as Id,
      @EndUserText.label: 'Comments'
      comments               as Comments,
      @EndUserText.label: 'Attachments'
      @Semantics.largeObject: { 
      mimeType: 'Mimetype',
      fileName: 'Filename',
      contentDispositionPreference: #ATTACHMENT
      }
      attachment             as Attachment,
      @EndUserText.label: 'File Type'
      mimetype               as Mimetype,
      @EndUserText.label: 'File Name'
      filename               as Filename,
      _student.Lastchangedat as LastChangedat,
      _student
}
