using { jobApplication } from '../srv/service.cds';

annotate jobApplication.JobRequisitionIntegrity with @UI.HeaderInfo: { TypeName: 'Job Requisition Integrity', TypeNamePlural: 'Job Requisition Integrities', Title: { Value: integrityID } };
annotate jobApplication.JobRequisitionIntegrity with {
  ID @UI.Hidden @Common.Text: { $value: integrityID, ![@UI.TextArrangement]: #TextOnly }
};
annotate jobApplication.JobRequisitionIntegrity with @UI.Identification: [{ Value: integrityID }];
annotate jobApplication.JobRequisitionIntegrity with {
  publicRelative @Common.ValueList: {
    CollectionPath: 'PublicRelative',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: integrityID , 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'integrityID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'firstName1'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'lastName1'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'kinshipDegree1'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'region1'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'city1'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'firstName2'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'lastName2'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'kinshipDegree2'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'region2'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'city2'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'firstName3'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'lastName3'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'kinshipDegree3'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'region3'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'city3'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'isPublicServant'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'hasBeenPublicServant'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'recommends'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'comment'
      },
    ],
  }
};
annotate jobApplication.JobRequisitionIntegrity with @UI.DataPoint #candidateFirstName: {
  Value: candidateFirstName,
  Title: 'Candidate First Name',
};
annotate jobApplication.JobRequisitionIntegrity with @UI.DataPoint #candidateLastName: {
  Value: candidateLastName,
  Title: 'Candidate Last Name',
};
annotate jobApplication.JobRequisitionIntegrity with @UI.DataPoint #recruiterFirstName: {
  Value: recruiterFirstName,
  Title: 'Recruiter First Name',
};
annotate jobApplication.JobRequisitionIntegrity with {
  integrityID @title: 'Integrity ID';
  candidateFirstName @title: 'Candidate First Name';
  candidateLastName @title: 'Candidate Last Name';
  recruiterFirstName @title: 'Recruiter First Name';
  recruiterLastName @title: 'Recruiter Last Name';
  jobCode @title: 'Job Code';
  jobTitle @title: 'Job Title';
  jobReqId @title: 'Job Req ID';
  integritySubmissionDate @title: 'Integrity Submission Date'
};

annotate jobApplication.JobRequisitionIntegrity with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: integrityID },
    { $Type: 'UI.DataField', Value: candidateFirstName },
    { $Type: 'UI.DataField', Value: candidateLastName },
    { $Type: 'UI.DataField', Value: recruiterFirstName },
    { $Type: 'UI.DataField', Value: recruiterLastName },
    { $Type: 'UI.DataField', Value: jobCode },
    { $Type: 'UI.DataField', Value: jobTitle },
    { $Type: 'UI.DataField', Value: jobReqId },
    { $Type: 'UI.DataField', Value: integritySubmissionDate },
    { $Type: 'UI.DataField', Label: 'Public Relative', Value: publicRelative_ID }
];

annotate jobApplication.JobRequisitionIntegrity with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: integrityID },
    { $Type: 'UI.DataField', Value: candidateFirstName },
    { $Type: 'UI.DataField', Value: candidateLastName },
    { $Type: 'UI.DataField', Value: recruiterFirstName },
    { $Type: 'UI.DataField', Value: recruiterLastName },
    { $Type: 'UI.DataField', Value: jobCode },
    { $Type: 'UI.DataField', Value: jobTitle },
    { $Type: 'UI.DataField', Value: jobReqId },
    { $Type: 'UI.DataField', Value: integritySubmissionDate },
    { $Type: 'UI.DataField', Label: 'Public Relative', Value: publicRelative_ID }
  ]
};

annotate jobApplication.JobRequisitionIntegrity with {
  publicRelative @Common.Text: { $value: publicRelative.publicRelativeID, ![@UI.TextArrangement]: #TextOnly }
};

annotate jobApplication.JobRequisitionIntegrity with {
  publicRelative @Common.Label: 'Public Relative'
};

annotate jobApplication.JobRequisitionIntegrity with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#candidateFirstName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#candidateLastName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#recruiterFirstName' }
];

annotate jobApplication.JobRequisitionIntegrity with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate jobApplication.JobRequisitionIntegrity with @UI.SelectionFields: [
  publicRelative_ID
];

annotate jobApplication.PublicRelative with @UI.HeaderInfo: { TypeName: 'Public Relative', TypeNamePlural: 'Public Relatives', Title: { Value: publicRelativeID } };
annotate jobApplication.PublicRelative with {
  ID @UI.Hidden @Common.Text: { $value: publicRelativeID, ![@UI.TextArrangement]: #TextOnly }
};
annotate jobApplication.PublicRelative with @UI.Identification: [{ Value: publicRelativeID }];
annotate jobApplication.PublicRelative with {
  jobRequisitionIntegrity @Common.ValueList: {
    CollectionPath: 'JobRequisitionIntegrity',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: jobRequisitionIntegrity_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'integrityID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'candidateFirstName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'candidateLastName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'recruiterFirstName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'recruiterLastName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'jobCode'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'jobTitle'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'jobReqId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'integritySubmissionDate'
      },
    ],
  }
};
annotate jobApplication.PublicRelative with @UI.DataPoint #firstName1: {
  Value: firstName1,
  Title: 'First Name 1',
};
annotate jobApplication.PublicRelative with @UI.DataPoint #lastName1: {
  Value: lastName1,
  Title: 'Last Name 1',
};
annotate jobApplication.PublicRelative with @UI.DataPoint #kinshipDegree1: {
  Value: kinshipDegree1,
  Title: 'Kinship Degree 1',
};
annotate jobApplication.PublicRelative with {
  integrityID  @title: 'Public Relative ID';
  firstName1 @title: 'First Name 1';
  lastName1 @title: 'Last Name 1';
  kinshipDegree1 @title: 'Kinship Degree 1';
  region1 @title: 'Region 1';
  city1 @title: 'City 1';
  firstName2 @title: 'First Name 2';
  lastName2 @title: 'Last Name 2';
  kinshipDegree2 @title: 'Kinship Degree 2';
  region2 @title: 'Region 2';
  city2 @title: 'City 2';
  firstName3 @title: 'First Name 3';
  lastName3 @title: 'Last Name 3';
  kinshipDegree3 @title: 'Kinship Degree 3';
  region3 @title: 'Region 3';
  city3 @title: 'City 3';
  isPublicServant @title: 'Is Public Servant';
  hasBeenPublicServant @title: 'Has Been Public Servant';
  recommends @title: 'Recommends';
  comment @title: 'Comment'
};

annotate jobApplication.PublicRelative with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: integrityID  },
    { $Type: 'UI.DataField', Value: firstName1 },
    { $Type: 'UI.DataField', Value: lastName1 },
    { $Type: 'UI.DataField', Value: kinshipDegree1 },
    { $Type: 'UI.DataField', Value: region1 },
    { $Type: 'UI.DataField', Value: city1 },
    { $Type: 'UI.DataField', Value: firstName2 },
    { $Type: 'UI.DataField', Value: lastName2 },
    { $Type: 'UI.DataField', Value: kinshipDegree2 },
    { $Type: 'UI.DataField', Value: region2 },
    { $Type: 'UI.DataField', Value: city2 },
    { $Type: 'UI.DataField', Value: firstName3 },
    { $Type: 'UI.DataField', Value: lastName3 },
    { $Type: 'UI.DataField', Value: kinshipDegree3 },
    { $Type: 'UI.DataField', Value: region3 },
    { $Type: 'UI.DataField', Value: city3 },
    { $Type: 'UI.DataField', Value: isPublicServant },
    { $Type: 'UI.DataField', Value: hasBeenPublicServant },
    { $Type: 'UI.DataField', Value: recommends },
    { $Type: 'UI.DataField', Value: comment }
];

annotate jobApplication.PublicRelative with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: integrityID  },
    { $Type: 'UI.DataField', Value: firstName1 },
    { $Type: 'UI.DataField', Value: lastName1 },
    { $Type: 'UI.DataField', Value: kinshipDegree1 },
    { $Type: 'UI.DataField', Value: region1 },
    { $Type: 'UI.DataField', Value: city1 },
    { $Type: 'UI.DataField', Value: firstName2 },
    { $Type: 'UI.DataField', Value: lastName2 },
    { $Type: 'UI.DataField', Value: kinshipDegree2 },
    { $Type: 'UI.DataField', Value: region2 },
    { $Type: 'UI.DataField', Value: city2 },
    { $Type: 'UI.DataField', Value: firstName3 },
    { $Type: 'UI.DataField', Value: lastName3 },
    { $Type: 'UI.DataField', Value: kinshipDegree3 },
    { $Type: 'UI.DataField', Value: region3 },
    { $Type: 'UI.DataField', Value: city3 },
    { $Type: 'UI.DataField', Value: isPublicServant },
    { $Type: 'UI.DataField', Value: hasBeenPublicServant },
    { $Type: 'UI.DataField', Value: recommends },
    { $Type: 'UI.DataField', Value: comment } 
  ]
};

annotate jobApplication.PublicRelative with {
  jobRequisitionIntegrity @Common.Text: { $value: jobRequisitionIntegrity.integrityID, ![@UI.TextArrangement]: #TextOnly }
};

annotate jobApplication.PublicRelative with {
  jobRequisitionIntegrity @Common.Label: 'Job Requisition Integrity'
};

annotate jobApplication.PublicRelative with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#firstName1' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#lastName1' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#kinshipDegree1' }
];

annotate jobApplication.PublicRelative with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

