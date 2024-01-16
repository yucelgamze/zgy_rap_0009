@EndUserText.label: 'Projection view for Header Table'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZP_STUDENT_0009
  provider contract transactional_query
  as projection on ZI_STUDENT_0009
{

      @UI.facet: [{

       id: 'Student' ,
       purpose: #STANDARD,
       type: #IDENTIFICATION_REFERENCE,
       label: 'Student',
       position: 10 },
      {
       id:'Academic',
       purpose: #STANDARD ,
       type: #LINEITEM_REFERENCE,
       label: 'Academic',
       position: 20,
       targetElement: '_attachments' }]

      @UI: { lineItem: [{ position: 10 , label: 'Student ID'}],
      identification: [{ position: 10 , label: 'Student ID'}],
      selectionField: [{ position: 10 }]}
  key Id,
      @UI: { lineItem: [{ position: 20 , label: 'First Name'}],
      identification: [{ position: 20 , label: 'First Name'}],
      selectionField: [{ position: 20 }]}
      Firstname,
      @UI: { lineItem: [{ position: 30 , label: 'Last Name'}],
      identification: [{ position: 30 , label: 'Last Name'}],
      selectionField: [{ position: 30 }]}
      Lastname,
      @UI: { lineItem: [{ position: 40 , label: 'Age'}],
      identification: [{ position: 40 , label: 'Age'}] }
      Age,
      @UI: { lineItem: [{ position: 50 , label: 'Course'}],
      identification: [{ position: 50 , label: 'Course'}] }
      Course,
      @UI: { lineItem: [{ position: 60 , label: 'Course Duration'}],
      identification: [{ position: 60 , label: 'Course Duration'}] }
      Courseduration,
      @UI: { lineItem: [{ position: 70 , label: 'Status'}]}
      Status,
      @UI: { lineItem: [{ position: 80 , label: 'Gender'}],
      identification: [{ position: 80 , label: 'Gender'}] }
      Gender,
      @UI: { lineItem: [{ position: 90 , label: 'Date of Birth'}],
      identification: [{ position: 90 , label: 'Date of Birth'}] }
      Dob,
      @UI: { lineItem: [{ position: 100 , label: 'Salary'}],
      identification: [{ position: 100 , label: 'Salary'}] }
      Salary,
      @UI: { lineItem: [{ position: 110 , label: 'Role'}],
      identification: [{ position: 110 , label: 'Role'}] }
      Role,
      @UI.hidden: true
      Lastchangedat,
      @UI.hidden: true
      Locallastchangedat,
      /* Associations */
      _attachments : redirected to composition child ZP_ATT_0009
}
