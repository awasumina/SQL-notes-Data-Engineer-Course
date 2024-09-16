-- Add a unique constraint to the university_shortname column in universities. Give it the name university_shortname_unq.
-- Make universities.university_shortname unique
ALTER table universities
ADD constraint  university_shortname_unq UNIQUE(university_shortname);

-- Add a unique constraint to the organization column in organizations. Give it the name organization_unq.
-- Make organizations.organization unique
alter table organizations
add constraint organization_unq unique(organization)
