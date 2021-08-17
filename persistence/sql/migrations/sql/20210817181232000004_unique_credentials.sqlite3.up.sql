UPDATE identity_credential_identifiers
SET identity_credential_type_id = (SELECT ict.id
                                   FROM identity_credential_types as ict
                                          JOIN identity_credentials AS ic ON (ic.identity_credential_type_id = ict.id)
                                   WHERE ic.id = identity_credential_id);
