CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Student RESULT result.
    METHODS copyStudent FOR MODIFY
      IMPORTING keys FOR ACTION Student~copyStudent.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD copyStudent.

    DATA:lt_student TYPE TABLE FOR CREATE zi_student_0009.

    READ ENTITIES OF zi_student_0009 IN LOCAL MODE
    ENTITY  Student ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(students)
    FAILED failed.

    LOOP AT students ASSIGNING FIELD-SYMBOL(<lfs_students>).

      APPEND VALUE #( %cid = keys[ KEY entity %key = <lfs_students>-%key ]-%cid
                      %is_draft = keys[ KEY entity %key = <lfs_students>-%key ]-%param-%is_draft
                      %data = CORRESPONDING #( <lfs_students> EXCEPT id ) ) TO lt_student ASSIGNING FIELD-SYMBOL(<lfs_newStudents>).
    ENDLOOP.

    MODIFY ENTITIES OF zi_student_0009 IN LOCAL MODE
    ENTITY student
    CREATE FIELDS ( Firstname Lastname Age Course Courseduration Status Gender Dob Salary Role )
    WITH lt_student MAPPED DATA(mapped_create).

    mapped-student = mapped_create-student.

  ENDMETHOD.

ENDCLASS.
