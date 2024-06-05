CREATE TABLE `data_platform_invitation_header_data`
(
  `Invitation`                  int(20) NOT NULL,
  `InvitationType`              varchar(3) NOT NULL,
  `InvitationOwner`             int(12) NOT NULL,
  `InvitationGuest`             int(12) NOT NULL,
  `InvitationObjectType`        varchar(40) NOT NULL,
  `InvitationObject`            int(16) NOT NULL,
  `OwnerParticipation`          int(20) NOT NULL,
  `OwnerAttendance`             int(20) DEFAULT NULL,
  `GuestParticipation`          int(20) DEFAULT NULL,
  `GuestAttendance`             int(20) DEFAULT NULL,
  `ValidityStartDate`           date NOT NULL,
  `ValidityEndDate`             date NOT NULL,
  `CreationDate`                date NOT NULL,
  `CreationTime`                time NOT NULL,
  `IsCancelled`                 tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Invitation`),

    CONSTRAINT `DPFMInvitationHeaderDataInvitationOwner_fk` FOREIGN KEY (`InvitationOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMInvitationHeaderDataInvitationGuest_fk` FOREIGN KEY (`InvitationGuest`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMInvitationHeaderDataInvitationObjectType_fk` FOREIGN KEY (`InvitationObjectType`) REFERENCES `data_platform_object_type_object_type_data` (`ObjectType`),
    CONSTRAINT `DPFMInvitationHeaderDataOwnerParticipation_fk` FOREIGN KEY (`OwnerParticipation`) REFERENCES `data_platform_participation_header_data` (`Participation`),
    CONSTRAINT `DPFMInvitationHeaderDataOwnerAttendance_fk` FOREIGN KEY (`OwnerAttendance`) REFERENCES `data_platform_attendance_header_data` (`Attendance`),
    CONSTRAINT `DPFMInvitationHeaderDataGuestParticipation_fk` FOREIGN KEY (`GuestParticipation`) REFERENCES `data_platform_participation_header_data` (`Participation`),
    CONSTRAINT `DPFMInvitationHeaderDataGuestAttendance_fk` FOREIGN KEY (`GuestAttendance`) REFERENCES `data_platform_attendance_header_data` (`Attendance`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
