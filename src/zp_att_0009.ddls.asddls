@EndUserText.label: 'Projection view for Item Table'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZP_ATT_0009
  as projection on ZI_ATT_0009
{
      @UI.facet: [{

       id: 'Attachments' ,
       purpose: #STANDARD,
       type: #IDENTIFICATION_REFERENCE,
       label: 'Attachment Information',
       position: 10 }]

      @UI: { lineItem: [{ position: 10 , label: 'Attachment ID'}],
      identification: [{ position: 10 , label: 'Attachmen ID'}]}
  key AttachId,
      @UI: { lineItem: [{ position: 20 }],
      identification: [{ position: 20 }]}
      Id,
      @UI: { lineItem: [{ position: 30 }],
      identification: [{ position: 30 }]}
      Comments,
      @UI: { lineItem: [{ position: 40 }],
      identification: [{ position: 40 }]}
      Attachment,
      @UI: { lineItem: [{ position: 50 }],
      identification: [{ position: 50 }]}
      Mimetype,
      @UI: { lineItem: [{ position: 60 }],
      identification: [{ position: 60 }]}
      Filename,
      LastChangedat,
      /* Associations */
      _student : redirected to parent ZP_STUDENT_0009
}
