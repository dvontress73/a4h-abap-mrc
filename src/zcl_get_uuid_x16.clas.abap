CLASS zcl_get_uuid_x16 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    class-METHODS
        generate_uuid_x16
            RETURNING VALUE(uuidx16) type sysuuid_x16.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_GET_UUID_X16 IMPLEMENTATION.
  METHOD GENERATE_UUID_X16.
    DATA sys_uuid TYPE REF TO if_system_uuid.

    sys_uuid = cl_uuid_factory=>create_system_uuid(  ).
    try.
      uuidx16 = sys_uuid->create_uuid_x16(  ).
      catch cx_uuid_error into data(uuid_error).
    endtry.

  ENDMETHOD.

ENDCLASS.
