using { jobApplicationSrv } from '../db/schema.cds';

@path : '/service/jobApplication'
service jobApplication
{
    @odata.draft.enabled
    entity JobRequisitionIntegrity as
        projection on jobApplicationSrv.JobRequisitionIntegrity;

    @odata.draft.enabled
    entity PublicRelative as
        projection on jobApplicationSrv.PublicRelative;
}

annotate jobApplication with @requires :
[
    'authenticated-user'
];
