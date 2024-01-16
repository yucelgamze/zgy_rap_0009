@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Entity View for Student'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define root view entity ZI_STUDENT_0009
  as select from zgy_rap_0009
  composition [1..*] of ZI_ATT_0009 as _attachments
{
      @EndUserText.label: 'Student ID'
  key id                 as Id,
      @EndUserText.label: 'First Name'
      firstname          as Firstname,
      @EndUserText.label: 'Last Name'
      lastname           as Lastname,
      @EndUserText.label: 'Age'
      age                as Age,
      @EndUserText.label: 'Course'
      course             as Course,
      @EndUserText.label: 'Course Duration'
      courseduration     as Courseduration,
      @EndUserText.label: 'Status'
      status             as Status,
      @EndUserText.label: 'Gender'
      gender             as Gender,
      @EndUserText.label: 'Date of Birth'
      dob                as Dob,
      @EndUserText.label: 'Salary'
      salary             as Salary,
      @EndUserText.label: 'Role'
      role               as Role,
      lastchangedat      as Lastchangedat,
      locallastchangedat as Locallastchangedat,
      _attachments
}
