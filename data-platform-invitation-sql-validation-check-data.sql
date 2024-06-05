CREATE TABLE `data_platform_invitation_validation_check_data`
(
  `InvitationObjectType`        varchar(40) NOT NULL,
  `InvitationObject`            int(16) NOT NULL,
  `InvitationOwner`             int(12) NOT NULL,
  `InvitationGuest`             int(12) NOT NULL,
  `Invitation`                  int(20) NOT NULL,
  `CreationDate`                date NOT NULL,
  `CreationTime`                time NOT NULL,
  `IsCancelled`                 tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InvitationObjectType`, `InvitationObject`, `InvitationOwner`, `InvitationGuest`),

    CONSTRAINT `DPFMInvitationVDCheckDataInvitationObjectType_fk` FOREIGN KEY (`InvitationObjectType`) REFERENCES `data_platform_object_type_object_type_data` (`ObjectType`),
    CONSTRAINT `DPFMInvitationVDCheckDataInvitationOwner_fk` FOREIGN KEY (`InvitationOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMInvitationVDCheckDataInvitationGuest_fk` FOREIGN KEY (`InvitationGuest`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMInvitationVDCheckDataInvitation_fk` FOREIGN KEY (`Invitation`) REFERENCES `data_platform_invitation_header_data` (`Invitation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
