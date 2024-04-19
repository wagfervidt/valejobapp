namespace jobApplicationSrv;

entity PublicRelative {
    key integrityID             : Integer
        @mandatory;
        firstName1              : String;
        lastName1               : String;
        kinshipDegree1          : String;
        region1                 : String;
        city1                   : String;
        firstName2              : String;
        lastName2               : String;
        kinshipDegree2          : String;
        region2                 : String;
        city2                   : String;
        firstName3              : String;
        lastName3               : String;
        kinshipDegree3          : String;
        region3                 : String;
        city3                   : String;
        isPublicServant         : Boolean;
        hasBeenPublicServant    : Boolean;
        recommends              : Boolean;
        comment                 : String;
        jobRequisitionIntegrity : Association to one JobRequisitionIntegrity;
}

entity JobRequisitionIntegrity {
    key integrityID             : Integer
        @mandatory;
        candidateFirstName      : String;
        candidateLastName       : String;
        recruiterFirstName      : String;
        recruiterLastName       : String;
        jobCode                 : String;
        jobTitle                : String;
        jobReqId                : String;
        integritySubmissionDate : String;
        publicRelative          : Association to one PublicRelative;
}
