SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict fH4Kab5UwEvS9oftizPq2Ui54UlHqxuscCR1aFxkfZH4NVQvPFGlkxgX6nbCG6J

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:owner	Owner	Owner	global	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:38.431+00
global:admin	Admin	Admin	global	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:38.431+00
global:member	Member	Member	global	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:38.431+00
project:admin	Project Admin	Project Admin	project	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:40.28+00
project:personalOwner	Project Owner	Project Owner	project	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:40.28+00
project:editor	Project Editor	Project Editor	project	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:40.28+00
project:viewer	Project Viewer	Project Viewer	project	t	2025-10-08 08:01:28.888+00	2025-10-08 08:01:40.28+00
credential:owner	Credential Owner	Credential Owner	credential	t	2025-10-08 08:01:41.961+00	2025-10-08 08:01:41.961+00
credential:user	Credential User	Credential User	credential	t	2025-10-08 08:01:41.961+00	2025-10-08 08:01:41.961+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2025-10-08 08:01:43.177+00	2025-10-08 08:01:43.177+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2025-10-08 08:01:43.177+00	2025-10-08 08:01:43.177+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
b597360e-99f4-421f-ac79-0d44ac821e04	cris.xyrus@gmail.com	Cris Xyrus	Casupanan	$2a$10$xnR5qAuApjuiX6izHAM/SOmgxHdMIvCMpcdvfg9quOMTcGUv900Pa	{"version":"v4","personalization_survey_submitted_at":"2025-10-08T08:06:02.762Z","personalization_survey_n8n_version":"1.114.3","automationGoalDevops":["ci-cd","cloud-infrastructure-orchestration"],"companySize":"personalUser","companyType":"saas","role":"devops","reportedSource":"youtube"}	2025-10-08 07:57:03.549+00	2025-10-15 06:00:16.187+00	{"userActivated": false}	f	f	\N	\N	2025-10-15	global:owner
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged") FROM stdin;
Airtable Personal Access Token account	U2FsdGVkX19rPPSA/1Z35YwkFrFPurgQ++WyMcQ9rUoWosX/rPahmBi1+REWbj/9VYJXsdoGfMN1wBjVxgWqE+ERlZVKQWohG0LUoirVo6UGG/LLbU+jcli2kEJW5bTXPlkztVtcIANcZrvhLfv6JPoBwD5qgTh9EbHFnUfgL+w=	airtableTokenApi	2025-10-09 23:56:43.309+00	2025-10-09 23:56:43.045+00	vAscf3mzCv5KfJVv	f
Airtable Personal Access Token account 2	U2FsdGVkX1/uWAa+h2GHNskl+9qM3CzMdleYm95GzkQEscQD09MRK2RzhWgDbOR9nZC/x4Vnj3ZmRJ43PjBjsSPtDut3KIsjdMfNiXCFjAIeR00bOx0W6Yh4xQyCgCY7b7SE2G6vKKZKWUyGFAgpn2BrJxC7nzmAEDTNE9rfnKA=	airtableTokenApi	2025-10-15 06:11:37.791+00	2025-10-15 06:11:37.529+00	4ACysTGljOUznmMf	f
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description") FROM stdin;
1a5d02C9xKYg28f8	Cris Xyrus Casupanan <cris.xyrus@gmail.com>	personal	2025-10-08 07:59:31.984+00	2025-10-08 08:05:06.955+00	\N	\N
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived") FROM stdin;
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	2025-10-09 23:39:27.004+00	2025-10-10 00:32:55.019+00	{"executionOrder":"v1"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	88ac7ec5-d501-4775-a539-db9b78179489	1	DYMYqoAaH8lf2IjQ	{"templateCredsSetupCompleted":true}	\N	f
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
1	t	manual	\N	\N	2025-10-09 23:39:35.705+00	2025-10-09 23:39:36.208+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-09 23:39:33.499+00
2	t	manual	\N	\N	2025-10-10 00:04:19.732+00	2025-10-10 00:04:21.195+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 00:04:18.713+00
3	t	manual	\N	\N	2025-10-10 00:18:26.484+00	2025-10-10 00:18:26.987+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 00:18:23.481+00
4	t	manual	\N	\N	2025-10-10 00:20:14.322+00	2025-10-10 00:20:15.767+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 00:20:13.318+00
5	t	manual	\N	\N	2025-10-10 00:21:35.866+00	2025-10-10 00:21:37.028+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 00:21:34.867+00
6	t	manual	\N	\N	2025-10-10 05:13:32.239+00	2025-10-10 05:13:33.46+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 05:13:29.872+00
7	t	manual	\N	\N	2025-10-10 05:22:39.906+00	2025-10-10 05:22:42.713+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 05:22:38.901+00
8	t	manual	\N	\N	2025-10-10 05:22:54.192+00	2025-10-10 05:22:54.597+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 05:22:53.193+00
9	t	manual	\N	\N	2025-10-10 05:23:09.466+00	2025-10-10 05:23:09.923+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 05:23:08.334+00
10	t	manual	\N	\N	2025-10-10 05:28:13.76+00	2025-10-10 05:28:14.163+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 05:28:12.754+00
11	t	manual	\N	\N	2025-10-10 05:28:37.854+00	2025-10-10 05:28:38.283+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-10 05:28:36.791+00
12	t	manual	\N	\N	2025-10-14 13:09:49.589+00	2025-10-14 13:09:50.844+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-14 13:09:47.318+00
13	t	manual	\N	\N	2025-10-15 06:14:39.666+00	2025-10-15 06:14:40.076+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-15 06:14:36.923+00
14	t	manual	\N	\N	2025-10-15 06:23:04.864+00	2025-10-15 06:23:06.026+00	\N	success	DYMYqoAaH8lf2IjQ	\N	2025-10-15 06:23:03.804+00
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data") FROM stdin;
1	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"mode":"list","value":""},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"LbhTGbe099DVgbiw","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Schedule Trigger",["4"],{"Schedule Trigger":"13"},{},{},[],{},{},{},["14"],{"startTime":1760053176112,"executionIndex":0,"source":"15","hints":"16","executionTime":95,"executionStatus":"17","data":"18"},[],[],"success",{"main":"19"},["20"],["21"],{"json":"22","pairedItem":"23"},{"timestamp":"24","Readable date":"25","Readable time":"26","Day of week":"27","Year":"28","Month":"29","Day of month":"30","Hour":"31","Minute":"32","Second":"33","Timezone":"34"},{"item":0},"2025-10-09T19:39:36.115-04:00","October 9th 2025, 7:39:36 pm","7:39:36 pm","Thursday","2025","October","09","19","39","36","America/New_York (UTC-04:00)"]
2	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's details","Description":"Client information"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"a05c46a2-4b3d-4e5b-9038-2fdffc31a210","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create a record",["13","4"],{"Schedule Trigger":"14","Create a record":"15"},{},{},[],{},{},{},"Schedule Trigger",["16"],["17"],{"startTime":1760053176112,"executionIndex":0,"source":"18","hints":"19","executionTime":95,"executionStatus":"20","data":"21"},{"startTime":1760054660140,"executionIndex":1,"source":"22","hints":"23","executionTime":1055,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"timestamp":"36","Readable date":"37","Readable time":"38","Day of week":"39","Year":"40","Month":"41","Day of month":"42","Hour":"43","Minute":"44","Second":"45","Timezone":"46"},{"item":0},{"id":"47","createdTime":"48","fields":"49"},{"item":0},"2025-10-09T19:39:36.115-04:00","October 9th 2025, 7:39:36 pm","7:39:36 pm","Thursday","2025","October","09","19","39","36","America/New_York (UTC-04:00)","recoAf82xeyp988ME","2025-10-10T00:04:21.000Z",{"Task Name":"50","Description":"51","Days Until Due":"52","Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"53","Next Action Suggestion (AI)":"54"},"Client's details","Client information",{"specialValue":"55"},{"state":"56","errorType":"57","value":null,"isStale":false},{"state":"56","errorType":"57","value":null,"isStale":false},"NaN","error","emptyDependency"]
3	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Schedule Trigger",["4"],{"Schedule Trigger":"13"},{},{},[],{},{},{},["14"],{"startTime":1760055506893,"executionIndex":0,"source":"15","hints":"16","executionTime":93,"executionStatus":"17","data":"18"},[],[],"success",{"main":"19"},["20"],["21"],{"json":"22","pairedItem":"23"},{"timestamp":"24","Readable date":"25","Readable time":"26","Day of week":"27","Year":"28","Month":"29","Day of month":"30","Hour":"31","Minute":"32","Second":"33","Timezone":"34"},{"item":0},"2025-10-09T20:18:26.897-04:00","October 9th 2025, 8:18:26 pm","8:18:26 pm","Thursday","2025","October","09","20","18","26","America/New_York (UTC-04:00)"]
4	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json['Day of month'] }}{{ $json.Month }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create a record",["13","4"],{"Schedule Trigger":"14","Create a record":"15"},{},{},[],{},{},{},"Schedule Trigger",["16"],["17"],{"startTime":1760055506893,"executionIndex":0,"source":"18","hints":"19","executionTime":93,"executionStatus":"20","data":"21"},{"startTime":1760055614728,"executionIndex":1,"source":"22","hints":"23","executionTime":1038,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"timestamp":"36","Readable date":"37","Readable time":"38","Day of week":"39","Year":"40","Month":"41","Day of month":"42","Hour":"43","Minute":"44","Second":"45","Timezone":"46"},{"item":0},{"id":"47","createdTime":"48","fields":"49"},{"item":0},"2025-10-09T20:18:26.897-04:00","October 9th 2025, 8:18:26 pm","8:18:26 pm","Thursday","2025","October","09","20","18","26","America/New_York (UTC-04:00)","recUIM6YMR3rajQ1n","2025-10-10T00:20:15.000Z",{"Task Name":"50","Description":"51","Status":"52","Due Date":"53","Days Until Due":-1,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"54","Next Action Suggestion (AI)":"55"},"Client's info","Action","Not Started","2025-10-09",{"state":"56","errorType":"57","value":null,"isStale":false},{"state":"56","errorType":"57","value":null,"isStale":false},"error","emptyDependency"]
5	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create a record",["13","4"],{"Schedule Trigger":"14","Create a record":"15"},{},{},[],{},{},{},"Schedule Trigger",["16"],["17"],{"startTime":1760055506893,"executionIndex":0,"source":"18","hints":"19","executionTime":93,"executionStatus":"20","data":"21"},{"startTime":1760055696267,"executionIndex":1,"source":"22","hints":"23","executionTime":760,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"timestamp":"36","Readable date":"37","Readable time":"38","Day of week":"39","Year":"40","Month":"41","Day of month":"42","Hour":"43","Minute":"44","Second":"45","Timezone":"46"},{"item":0},{"id":"47","createdTime":"48","fields":"49"},{"item":0},"2025-10-09T20:18:26.897-04:00","October 9th 2025, 8:18:26 pm","8:18:26 pm","Thursday","2025","October","09","20","18","26","America/New_York (UTC-04:00)","recynghPyip2jnGu8","2025-10-10T00:21:37.000Z",{"Task Name":"50","Description":"51","Status":"52","Due Date":"53","Days Until Due":32871816,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"54","Next Action Suggestion (AI)":"55"},"Client's info","Action","Not Started","+092025-10-01",{"state":"56","errorType":"57","value":null,"isStale":false},{"state":"56","errorType":"57","value":null,"isStale":false},"error","emptyDependency"]
6	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create a record",["13","4"],{"Schedule Trigger":"14","Create a record":"15"},{},{},[],{},{},{},"Schedule Trigger",["16"],["17"],{"startTime":1760073212674,"executionIndex":0,"source":"18","hints":"19","executionTime":7,"executionStatus":"20","data":"21"},{"startTime":1760073212683,"executionIndex":1,"source":"22","hints":"23","executionTime":776,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13"},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"timestamp":"36","Readable date":"37","Readable time":"38","Day of week":"39","Year":"40","Month":"41","Day of month":"42","Hour":"43","Minute":"44","Second":"45","Timezone":"46"},{"item":0},{"id":"47","createdTime":"48","fields":"49"},{"item":0},"2025-10-10T01:13:32.678-04:00","October 10th 2025, 1:13:32 am","1:13:32 am","Friday","2025","October","10","01","13","32","America/New_York (UTC-04:00)","recW8qyz6hI7qfwvd","2025-10-10T05:13:33.000Z",{"Task Name":"50","Description":"51","Status":"52","Due Date":"53","Days Until Due":36524241,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"54","Next Action Suggestion (AI)":"55"},"Client's info","Action","Not Started","+102025-10-01",{"state":"56","errorType":"57","value":null,"isStale":false},{"state":"56","errorType":"57","value":null,"isStale":false},"error","emptyDependency"]
7	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"21cabe47-b8e4-4281-93b4-1306cf84d3d9","name":"","value":"[\\"string 1\\", \\"string 2\\", \\"string 3\\"]","type":"array"},{"id":"dc3beeae-e5b5-4d46-835d-5c2b3325e151","name":"","value":"","type":"string"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[144,-80],"id":"8cc07eca-36db-4de9-8812-1511bd595f9c","name":"Edit Fields"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]},"Create a record":{"main":[[{"node":"Edit Fields","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Edit Fields",["13","14","4"],{"Schedule Trigger":"15","Create a record":"16","Edit Fields":"17"},{},{},[],{},{},{},"Schedule Trigger","Create a record",["18"],["19"],["20"],{"startTime":1760073760308,"executionIndex":0,"source":"21","hints":"22","executionTime":2,"executionStatus":"23","data":"24"},{"startTime":1760073760310,"executionIndex":1,"source":"25","hints":"26","executionTime":2400,"executionStatus":"23","data":"27"},{"startTime":1760073762711,"executionIndex":2,"source":"28","hints":"29","executionTime":2,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14"},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{"timestamp":"48","Readable date":"49","Readable time":"50","Day of week":"51","Year":"52","Month":"53","Day of month":"54","Hour":"55","Minute":"56","Second":"57","Timezone":"58"},{"item":0},{"id":"59","createdTime":"60","fields":"61"},{"item":0},{"":"62"},{"item":0},"2025-10-10T01:22:40.309-04:00","October 10th 2025, 1:22:40 am","1:22:40 am","Friday","2025","October","10","01","22","40","America/New_York (UTC-04:00)","recTFIlb5ymuygxF6","2025-10-10T05:22:41.000Z",{"Task Name":"63","Description":"64","Status":"65","Due Date":"66","Days Until Due":36524241,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"67","Next Action Suggestion (AI)":"68"},"","Client's info","Action","Not Started","+102025-10-01",{"state":"69","errorType":"70","value":null,"isStale":false},{"state":"69","errorType":"70","value":null,"isStale":false},"error","emptyDependency"]
8	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"21cabe47-b8e4-4281-93b4-1306cf84d3d9","name":"","value":"[\\"string 1\\", \\"string 2\\", \\"string 3\\"]","type":"array"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[144,-80],"id":"8cc07eca-36db-4de9-8812-1511bd595f9c","name":"Edit Fields"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]},"Create a record":{"main":[[{"node":"Edit Fields","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Edit Fields",["13","14","4"],{"Schedule Trigger":"15","Create a record":"16","Edit Fields":"17"},{},{},[],{},{},{},"Schedule Trigger","Create a record",["18"],["19"],["20"],{"startTime":1760073760308,"executionIndex":0,"source":"21","hints":"22","executionTime":2,"executionStatus":"23","data":"24"},{"startTime":1760073760310,"executionIndex":1,"source":"25","hints":"26","executionTime":2400,"executionStatus":"23","data":"27"},{"startTime":1760073774596,"executionIndex":2,"source":"28","hints":"29","executionTime":1,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{"timestamp":"48","Readable date":"49","Readable time":"50","Day of week":"51","Year":"52","Month":"53","Day of month":"54","Hour":"55","Minute":"56","Second":"57","Timezone":"58"},{"item":0},{"id":"59","createdTime":"60","fields":"61"},{"item":0},{"":"62"},{"item":0},"2025-10-10T01:22:40.309-04:00","October 10th 2025, 1:22:40 am","1:22:40 am","Friday","2025","October","10","01","22","40","America/New_York (UTC-04:00)","recTFIlb5ymuygxF6","2025-10-10T05:22:41.000Z",{"Task Name":"63","Description":"64","Status":"65","Due Date":"66","Days Until Due":36524241,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"67","Next Action Suggestion (AI)":"68"},["69","70","71"],"Client's info","Action","Not Started","+102025-10-01",{"state":"72","errorType":"73","value":null,"isStale":false},{"state":"72","errorType":"73","value":null,"isStale":false},"string 1","string 2","string 3","error","emptyDependency"]
13	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"mode":"list","value":""},"columns":{"mappingMode":"defineBelow","value":{},"matchingColumns":[],"schema":[],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[32,-80],"id":"111081c5-e3ab-4815-96b9-f6c341f5aac0","name":"Create a record","credentials":{"airtableTokenApi":{"id":"4ACysTGljOUznmMf","name":"Airtable Personal Access Token account 2"}}},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[48,48],"id":"b283d82f-1422-4d95-a133-5be8a8ea4ff1","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Schedule Trigger",["4"],{"Schedule Trigger":"13"},{},{},[],{},{},{},["14"],{"startTime":1760508880070,"executionIndex":0,"source":"15","hints":"16","executionTime":5,"executionStatus":"17","data":"18"},[],[],"success",{"main":"19"},["20"],["21"],{"json":"22","pairedItem":"23"},{"timestamp":"24","Readable date":"25","Readable time":"26","Day of week":"27","Year":"28","Month":"29","Day of month":"30","Hour":"31","Minute":"32","Second":"33","Timezone":"34"},{"item":0},"2025-10-15T02:14:40.073-04:00","October 15th 2025, 2:14:40 am","2:14:40 am","Wednesday","2025","October","15","02","14","40","America/New_York (UTC-04:00)"]
9	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"21cabe47-b8e4-4281-93b4-1306cf84d3d9","name":"numbers","value":"[\\"string 1\\", \\"string 2\\", \\"string 3\\"]","type":"array"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[144,-80],"id":"8cc07eca-36db-4de9-8812-1511bd595f9c","name":"Edit Fields"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]},"Create a record":{"main":[[{"node":"Edit Fields","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Edit Fields",["13","14","4"],{"Schedule Trigger":"15","Create a record":"16","Edit Fields":"17"},{},{},[],{},{},{},"Schedule Trigger","Create a record",["18"],["19"],["20"],{"startTime":1760073760308,"executionIndex":0,"source":"21","hints":"22","executionTime":2,"executionStatus":"23","data":"24"},{"startTime":1760073760310,"executionIndex":1,"source":"25","hints":"26","executionTime":2400,"executionStatus":"23","data":"27"},{"startTime":1760073789920,"executionIndex":2,"source":"28","hints":"29","executionTime":2,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{"timestamp":"48","Readable date":"49","Readable time":"50","Day of week":"51","Year":"52","Month":"53","Day of month":"54","Hour":"55","Minute":"56","Second":"57","Timezone":"58"},{"item":0},{"id":"59","createdTime":"60","fields":"61"},{"item":0},{"numbers":"62"},{"item":0},"2025-10-10T01:22:40.309-04:00","October 10th 2025, 1:22:40 am","1:22:40 am","Friday","2025","October","10","01","22","40","America/New_York (UTC-04:00)","recTFIlb5ymuygxF6","2025-10-10T05:22:41.000Z",{"Task Name":"63","Description":"64","Status":"65","Due Date":"66","Days Until Due":36524241,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"67","Next Action Suggestion (AI)":"68"},["69","70","71"],"Client's info","Action","Not Started","+102025-10-01",{"state":"72","errorType":"73","value":null,"isStale":false},{"state":"72","errorType":"73","value":null,"isStale":false},"string 1","string 2","string 3","error","emptyDependency"]
10	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"21cabe47-b8e4-4281-93b4-1306cf84d3d9","name":"numbers","value":"{\\"name\\":\\"xyrus\\"}","type":"object"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[144,-80],"id":"8cc07eca-36db-4de9-8812-1511bd595f9c","name":"Edit Fields"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]},"Create a record":{"main":[[{"node":"Edit Fields","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Edit Fields",["13","14","4"],{"Schedule Trigger":"15","Create a record":"16","Edit Fields":"17"},{},{},[],{},{},{},"Schedule Trigger","Create a record",["18"],["19"],["20"],{"startTime":1760073760308,"executionIndex":0,"source":"21","hints":"22","executionTime":2,"executionStatus":"23","data":"24"},{"startTime":1760073760310,"executionIndex":1,"source":"25","hints":"26","executionTime":2400,"executionStatus":"23","data":"27"},{"startTime":1760074094161,"executionIndex":2,"source":"28","hints":"29","executionTime":1,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{"timestamp":"48","Readable date":"49","Readable time":"50","Day of week":"51","Year":"52","Month":"53","Day of month":"54","Hour":"55","Minute":"56","Second":"57","Timezone":"58"},{"item":0},{"id":"59","createdTime":"60","fields":"61"},{"item":0},{"numbers":"62"},{"item":0},"2025-10-10T01:22:40.309-04:00","October 10th 2025, 1:22:40 am","1:22:40 am","Friday","2025","October","10","01","22","40","America/New_York (UTC-04:00)","recTFIlb5ymuygxF6","2025-10-10T05:22:41.000Z",{"Task Name":"63","Description":"64","Status":"65","Due Date":"66","Days Until Due":36524241,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"67","Next Action Suggestion (AI)":"68"},{"name":"69"},"Client's info","Action","Not Started","+102025-10-01",{"state":"70","errorType":"71","value":null,"isStale":false},{"state":"70","errorType":"71","value":null,"isStale":false},"xyrus","error","emptyDependency"]
14	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tblgItzqnb86D3pJn","mode":"list","cachedResultName":"Clients","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tblgItzqnb86D3pJn"},"columns":{"mappingMode":"defineBelow","value":{"Client Name":"Client's Details"},"matchingColumns":[],"schema":[{"id":"Client Name","displayName":"Client Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Company","displayName":"Company","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Contact Email","displayName":"Contact Email","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Phone Number","displayName":"Phone Number","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Client Photo","displayName":"Client Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Address","displayName":"Address","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Projects","displayName":"Projects","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Payments Received","displayName":"Total Payments Received","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Payments","displayName":"Payments","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Invoices","displayName":"Invoices","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Tasks","displayName":"Tasks","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-16,-80],"id":"111081c5-e3ab-4815-96b9-f6c341f5aac0","name":"Create a record","credentials":{"airtableTokenApi":{"id":"4ACysTGljOUznmMf","name":"Airtable Personal Access Token account 2"}}},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-240,-80],"id":"b283d82f-1422-4d95-a133-5be8a8ea4ff1","name":"Schedule Trigger"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create a record",["13","4"],{"Schedule Trigger":"14","Create a record":"15"},{},{},[],{},{},{},"Schedule Trigger",["16"],["17"],{"startTime":1760508880070,"executionIndex":0,"source":"18","hints":"19","executionTime":5,"executionStatus":"20","data":"21"},{"startTime":1760509385268,"executionIndex":1,"source":"22","hints":"23","executionTime":758,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"timestamp":"36","Readable date":"37","Readable time":"38","Day of week":"39","Year":"40","Month":"41","Day of month":"42","Hour":"43","Minute":"44","Second":"45","Timezone":"46"},{"item":0},{"id":"47","createdTime":"48","fields":"49"},{"item":0},"2025-10-15T02:14:40.073-04:00","October 15th 2025, 2:14:40 am","2:14:40 am","Wednesday","2025","October","15","02","14","40","America/New_York (UTC-04:00)","recnlt2YBVrMs9E79","2025-10-15T06:23:06.000Z",{"Client Name":"50"},"Client's Details"]
11	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-272,-80],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[-64,-80],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}},{"parameters":{"mode":"manual","duplicateItem":false,"assignments":{"assignments":[{"id":"21cabe47-b8e4-4281-93b4-1306cf84d3d9","name":"Name: ","value":"{\\"name\\":\\"xyrus\\"}","type":"object"}]},"includeOtherFields":false,"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[144,-80],"id":"8cc07eca-36db-4de9-8812-1511bd595f9c","name":"Edit Fields"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]},"Create a record":{"main":[[{"node":"Edit Fields","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Edit Fields",["13","14","4"],{"Schedule Trigger":"15","Create a record":"16","Edit Fields":"17"},{},{},[],{},{},{},"Schedule Trigger","Create a record",["18"],["19"],["20"],{"startTime":1760073760308,"executionIndex":0,"source":"21","hints":"22","executionTime":2,"executionStatus":"23","data":"24"},{"startTime":1760073760310,"executionIndex":1,"source":"25","hints":"26","executionTime":2400,"executionStatus":"23","data":"27"},{"startTime":1760074118281,"executionIndex":2,"source":"28","hints":"29","executionTime":1,"executionStatus":"23","data":"30"},[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],[],{"main":"35"},["36"],{"previousNode":"13"},["37"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],["41"],{"json":"42","pairedItem":"43"},{"json":"44","pairedItem":"45"},{"json":"46","pairedItem":"47"},{"timestamp":"48","Readable date":"49","Readable time":"50","Day of week":"51","Year":"52","Month":"53","Day of month":"54","Hour":"55","Minute":"56","Second":"57","Timezone":"58"},{"item":0},{"id":"59","createdTime":"60","fields":"61"},{"item":0},{"Name: ":"62"},{"item":0},"2025-10-10T01:22:40.309-04:00","October 10th 2025, 1:22:40 am","1:22:40 am","Friday","2025","October","10","01","22","40","America/New_York (UTC-04:00)","recTFIlb5ymuygxF6","2025-10-10T05:22:41.000Z",{"Task Name":"63","Description":"64","Status":"65","Due Date":"66","Days Until Due":36524241,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"67","Next Action Suggestion (AI)":"68"},{"name":"69"},"Client's info","Action","Not Started","+102025-10-01",{"state":"70","errorType":"71","value":null,"isStale":false},{"state":"70","errorType":"71","value":null,"isStale":false},"xyrus","error","emptyDependency"]
12	{"id":"DYMYqoAaH8lf2IjQ","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[-304,-176],"id":"2910a1bc-d127-45dd-8559-485c1ffbe9f6","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app4l4Kh4EZwQbOa1","mode":"list","cachedResultName":"Tech Freelance Manager","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1"},"table":{"__rl":true,"value":"tbl2bwhQHU4XrTaJ3","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app4l4Kh4EZwQbOa1/tbl2bwhQHU4XrTaJ3"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Client's info","Status":"Not Started","Description":"Action","Due Date":"={{ $json.Month }}{{ $json['Day of month'] }}{{ $json.Year }}"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Urgent","value":"Urgent"}],"readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Client","displayName":"Client","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Billable Hours","displayName":"Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Task Photo","displayName":"Task Photo","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Hours","displayName":"Total Billable Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Billable Amount","displayName":"Total Billable Amount","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Name (from Project)","displayName":"Project Name (from Project)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Client Name (from Client)","displayName":"Client Name (from Client)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Next Action Suggestion (AI)","displayName":"Next Action Suggestion (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[16,-160],"id":"902b426a-d6c6-4693-9651-d2a6e5b430c1","name":"Create a record","credentials":{"airtableTokenApi":{"id":"vAscf3mzCv5KfJVv","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11"},{"Schedule Trigger":"12","Create a record":"13"},{},"Create a record",{},[],{},{},{},["14"],["15"],{"startTime":1760447389994,"executionIndex":0,"source":"16","hints":"17","executionTime":7,"executionStatus":"18","data":"19"},{"startTime":1760447390002,"executionIndex":1,"source":"20","hints":"21","executionTime":841,"executionStatus":"18","data":"22"},[],[],"success",{"main":"23"},["24"],[],{"main":"25"},["26"],{"previousNode":"27"},["28"],["29"],"Schedule Trigger",["30"],{"json":"31","pairedItem":"32"},{"json":"33","pairedItem":"34"},{"timestamp":"35","Readable date":"36","Readable time":"37","Day of week":"38","Year":"39","Month":"40","Day of month":"41","Hour":"42","Minute":"42","Second":"43","Timezone":"44"},{"item":0},{"id":"45","createdTime":"46","fields":"47"},{"item":0},"2025-10-14T09:09:49.998-04:00","October 14th 2025, 9:09:49 am","9:09:49 am","Tuesday","2025","October","14","09","49","America/New_York (UTC-04:00)","recgA931SEOoVo29F","2025-10-14T13:09:51.000Z",{"Task Name":"48","Description":"49","Status":"50","Due Date":"51","Days Until Due":51133937,"Is Overdue":1,"Total Billable Hours":0,"Total Billable Amount":0,"Task Summary (AI)":"52","Next Action Suggestion (AI)":"53"},"Client's info","Action","Not Started","+142025-10-01",{"state":"54","errorType":"55","value":null,"isStale":false},{"state":"54","errorType":"55","value":null,"isStale":false},"error","emptyDependency"]
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
1a5d02C9xKYg28f8	b597360e-99f4-421f-ac79-0d44ac821e04	project:personalOwner	2025-10-08 07:59:31.984+00	2025-10-08 07:59:31.984+00
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:use	externalSecret:use	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
dataStore:create	dataStore:create	\N
dataStore:read	dataStore:read	\N
dataStore:update	dataStore:update	\N
dataStore:delete	dataStore:delete	\N
dataStore:list	dataStore:list	\N
dataStore:readRow	dataStore:readRow	\N
dataStore:writeRow	dataStore:writeRow	\N
dataStore:listProject	dataStore:listProject	\N
dataStore:*	dataStore:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
*	*	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	externalSecret:use
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	oidc:manage
global:owner	dataStore:list
global:owner	role:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	externalSecret:use
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	oidc:manage
global:admin	dataStore:list
global:admin	role:manage
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataStore:list
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	workflow:execute
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataStore:create
project:admin	dataStore:read
project:admin	dataStore:update
project:admin	dataStore:delete
project:admin	dataStore:readRow
project:admin	dataStore:writeRow
project:admin	dataStore:listProject
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataStore:create
project:personalOwner	dataStore:read
project:personalOwner	dataStore:update
project:personalOwner	dataStore:delete
project:personalOwner	dataStore:readRow
project:personalOwner	dataStore:writeRow
project:personalOwner	dataStore:listProject
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	workflow:execute
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataStore:create
project:editor	dataStore:read
project:editor	dataStore:update
project:editor	dataStore:delete
project:editor	dataStore:readRow
project:editor	dataStore:writeRow
project:editor	dataStore:listProject
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataStore:read
project:viewer	dataStore:readRow
project:viewer	dataStore:listProject
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:editor	workflow:execute
workflow:editor	workflow:read
workflow:editor	workflow:update
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX1/9PyVChJJRcR2g7Fn5gACkS9HPue+AzqF/d2a2f8yWKg0h8vbPhXG5Qeya53EcmG599RvcGLDrhciEATcpF0pflzPwEHUFN+ItAhOuPfobbm0cM01jSh7YX9ywLHyctsNf1AaLiu0xWc1x1ncap3FGXOkREcKATr4gN9OZKTIVvnoNQiM48itFfN9KjdxyqzMFgOiHDGCW6bc9qIGOKGoKGRFOnjlHQ+XZu7cs/dKOwmKZW9gKnLyAr8dw2108H4B+E/iR2XH9N7fnwhznpnaEAgKkB/EjDq9miowI3P2VDcI/W4pgYPNZobNdwfbd0czTTU6mFtnJKOQ+eo3nUgVcqDUx9/UudxUpUiw/B7qxmVAQ3CMyA+9zFoU+NgvLBKUAvpfizxloH0XKwbRqnXVcXzqoVTAz0xRcxVkOsXRbUPdPG011Z6i1XcVXkOfE/QPrx8/y0fv/GssRB4syk0cPrOOcqN4a2n27ROxprsGvnkXdDTjSCORRsjVlV4woichRCDIBjZ1FeAQN301G8FU+tLUaaXRHpM5+qt6WkujUpAFFzfeAwQna","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB+xdxeQvD+omiC3ksTg6kGEAHoeBndVZjN12Mc4dP2t n8n deploy key"}	t
features.sourceControl	{"branchName":"main","connectionType":"ssh","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5sdnpxVVV6RnFGM3JMV1B2aklIdm1ES3ZmN0J0RVFCS0hnbmNZV3NwMDVTVUdaN2x3TDc1NGFpcWt4RDdtNzlhXG5EQVEzSVQ0NUlQam03WVlTSlZTT3JUMHNuaVQwWDc2d2tMdkszaHVvUTZqWXZDZWFmSWUwS2Y0REVaL3lsbUhZXG5EaUJ1MUt2WStYUUpsWUUvODFJREM0c2trOFpyTUtIaTdPZFI1UzZjbVVRNWp3cVpTWlhvQTJCVlpOQ044RENJXG40bitPbjRKMGxCeUhDMUZDKzFDNUU3YXQ0WFZqQnhhbDhHVzQwZ2RhMFNXdnc4T3BFb0JrV09OaUQ4NFlwOVhlXG5TY09sbHdTcDRVVmlkbnE0aVdaVjZ5c2JBZFhSbzV6MHkxR2RWVEViaXZ0LzlxZGVZWFU0R1JueTB2S05oR2hXXG5vZDEyZ0JScEhYcVVlTXdQbGdOZHdnPT18fFUyRnNkR1ZrWDEvZllSaTFveXRvY1pRQ1NxdVZiZVJyZGZscjNvXG5NU0NYb2w3d0dzSmhYS295bFQwVkV3M1JDa2gveWFqTmROYjMvR1JXRTc4ckUxSUQ1S1Q1TEIxR1ppLzF3cVBmXG5jeHo5UW1vZE12VS80eWFPU240ZGl0K0l5MkxGWFlaRHNNaW1HKzlobkZXY1l4OS9lWkhUQmVtc3N0SmVYc05EXG5FOXRueVZ2Smp1ZG5tNC80alNXbHorWW03UGZ6TFV3UGk0V2VxSGRaZTgrZElIYjR6YUNlVUxRcXZoZFRNcGo3XG5Na3h1d2t0N2g1MnJ6Y3dmYUM2WC96U29PUjdVVjE3R1hpanhJVEV6bXpXOStodFFvdkxyeTBhMWpwdVdNVEJzXG5hVG5PdTN6bVhqNy9IT2NMOFBMaFJobzVWSW9jNitFZlhDVWNzaGtXTEY2MVFndUFCaEtUNEtmQjZtQm5CdUs2XG5VV0hZZTg2SlpyNGp3L0VITFYxMWRIc3NQdkRIMGtwd3NnVkV6NW0rS3U2aVA4d1hjWVZKMDhaMi9LS2oxcU42XG45c0w5TVd4ZEVFaHFQZHU3S0Y1dGg2N24wOXV3aVFseDRwRTZkeFhiSHR0QktzemtPbmU3ejRocEp3eE1TNitKXG5pWHhKbzhZdDJZNlJaSi9XdzhFbmR6clVIQ1VnY2lYREU2dllnV1NCMWRENjFTcWNMRktLVlUwMDRPVUZmZnBFXG5sOUo3YTMyQzY2MEFwdWkwVVlDdERPVk5KMGEyYzk4dnNqSEdJY3loN3piSmkzSjVqSzhBL3RxR0UycXVZVzVYXG55Z3BtaFdkWmhyS0pubDBXZHoySjRiZndqNTN1ZTg2a3R6WjRtd09ScEtpYU9ORG5LN3g5ZGwxRnVpTk1QZHFwXG5tRklFVXltbEgvUTBaQTlIbGpVS29EcmU4UDVtVXY4TGFxcU02Z0hBWXd5QmtrUWJZbmY2bndvLzA1L3F4YzBqXG54WG1WWktKWEJrQkhZdlE0eTdUN2FoUXROQVoyZUhVWHVjQllLbjg3SUw0OXl6QVU4ZFQ0cXJ6V2E0dCtwTHg2XG5LNk0wQ21tUUI2dDlIaGxCRGxpZEptK1R3WXdhQ0FUdS9uMEl5Y1hlSXRla1pqSTZrMy8wUTQzYlAzTEZFWWN6XG5VemhJSlpJRTBvVDd3OExKNzhYdTVsYkNYRThKZDR6RENjdG0zeVBSc0I0RjFiTjdKSFIyMHl3TWduNHFhdzJFXG5ZVUpycWVGMjdyWjNBczJCYXdpbUpNclRJREhnWC9sbTVuc2JoOWpya1BlZy95MXNPMkp1eE53dnB2eG5kWEQ0XG5oeVVUNzgzVjY1UTBLMXp6RFhkZGVPZFNPTU1HS0E4Nm1DTStoQktEenkwWllwMEw0Q29pR2NHL0ZaNldKRHdRXG5HV1ZsNldsb0NmbHN6cXBiaHpWWVk1a2w2M3duWkIyZWxzTitCa0wvTmgxOG5OYnFlNDk0VXNCaXdFNHU0Q0NoXG45MGl3LzNGWC8xcGpZVVVxMHRUc3JuNEVrcTVIZ2NpVlAzK2ZaTVFHVGQrTTVaM3NuOVR0c20vbkVqS0hDRGZLXG4wSklhUEIxbnkzMW1lWXhEQVVzUVhOWVBHMC9RRzh5WWU2WEo4Rk5sQ3lxSUNCdVphNTZ2QmxxUVFMYkdXYWVBXG5NYlVTYllod2VUWVorOUNLMzNzZW9SMTllclVuYWFrL3FPYzE3YndvUjM3NFB3OXo1SkNpek8xdnRjaEFDTU9qXG5BT01wSEhDQUZ1RmV1WnN4WGR1YVlxelJlekltNjdua0g1NExoSHllRmF5bGVISXZPSjlPSUg0QkdXNElQTHB2XG56NzZRMVZyMkxGUUg4TVVSMEorS21yd1Q3c2VGQktZY1E4bzJwMy84ODJNbHczTEx3L1M1RWxqSjRQN0w2clpJXG5URnQwSFc4NTJTVTR3NS9vWFdWVXp2Tno0eis5dWg0YmNJTXUyc3BFUCt6WXg3SkhZZmdSMDJUaE8xbnk1VldYXG55T3ZpSy91ZHh5VnBBTVhPRzhtZVlwUk94N0Ftd0xjczNTeUI4VlVjc3crQms5RmpsdEU0WmVJNkl0TnNidm9uXG5mQktLNEJIUzNRekVRT01TY2RhM3pVTU8ybThLbFVZK1hHQmdFOWlSQWk1cDV2Mk1NRk9CS0pXVDB4dTkzKzdxXG52d3VoQ2ZFR2Q0RUNXUkZkYWw1MGwza1I3em16dFVTckdBdFl6UExmUWJaZU44RmthdFdkU1Z1elBnaXdETzVKXG44K1ZuK3c5UmJwa3ArTzZ5Q2lSL1h3M1I2QngzN093Z09ZTjFxVjYrT0hPb3pEUkFmNDVoVmlaYWRUQjUwNTUwXG5jL2hRZmMvcEZEUy9lY1lTVWE4d25IRUhaUzFORVhRL0ZnQzVYcFBsS29pY1B0MnV3ZjFKWWRRd1c1MCtQTkk0XG42VS96OUttT3JLVyt4bnV5Qkhxelh2SEdKai9mUEo2QXMwa04xMVBQZVMzRFd6VnZCVE8vYXdQOXlOVmwrYW1nXG40cGdLRGtudERHT00xakxNQnJUajYvSDlPQnlRZnRBRWo4c212MWlKMytwWWZNcGxBUGpvQkR1bjZYUUhuV2haXG53RWsxUll5VVlrOG5OVzRxTFRUTTd2Q0kxOTQyU29hay9MMGsvejVWcDhOYkRqMTNUdmJBUnJpMXlZL3VnZ1pXXG5FTndrWldUbFBwTDBTRnMyRi9qNHNkbnQ1eW5RNWV5S3NGWmp1QkpodzczSGc0V1R1bTUrRlk0aktQRFBSMVViXG5jZTZJMzR2S0dFQ2ZMMzVMVk52NVUrWHJjRjUyejU3WURDY1lKQkN4THYxMC9BcHNEODhpMUFOdFYwaGR2cVhmXG5oVWVpbGRHaHhjS0dlNXNJakhaZEtKUjhRK0NuM3B1WmxWUzBnZ3pCSmlCR2UyYTdCTGMvbXhVdlU5OHlJYktSXG5OSXVGa1VRRXMrbW54Q1dZVWI4QVp4SCt6UHJKQVJtQkxtcHFIcjYvMk1uNW5LNG1rbTIzbEtKNXJnTWx5d1lvXG56UXcySloxd1I4MTBCZzFnSmthemNNVGdwSkpxUW0va3hrUERGK1g5dENuQ0UwbkE9PXx8QXA0NjZaYkpjR0hxXG5DV21wVW8yNlZtN2dXMjFCeDRiU3E2Ym8vbkZrZnpCcVJBcW1zKzhCQm9CSXdFWU5BaUlYY0lGYm9XNi9oczE3XG5mSXlpdTlNRURCZ3J6UFBETFNqeE9rY1B3cVdJWnhDeGFwMCtEYjFnUE96VkVXQUNRcm9NbXRMajE0TFhObGNLXG5la0Z0RVJEaTFHN09OT1M4OWlmZFRiY2ZobzBNOGlFbGRCQno4UzFoQkxSSUNQMUpaekN6OWVrdzFTTWg0MEZlXG55UHVkb0NNa2loSU9qYytiMHMyZzlWbU5OZ05sSFJkQ3ZZdWJibU5mKzRjSVFlb0NjN1Q0dmJrQ1BMUUlrTmhkXG5oZFpSTnpNNkNkMDRqallMZCs5VXJ2U0pFK1M0UUtGY3JHRVdJODVaUVVaeTJFY1F1OGhmM0tCT2U1eXJ2bWM2XG5GVDNjSFh3NHJBPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
vAscf3mzCv5KfJVv	1a5d02C9xKYg28f8	credential:owner	2025-10-09 23:56:43.309+00	2025-10-09 23:56:43.309+00
4ACysTGljOUznmMf	1a5d02C9xKYg28f8	credential:owner	2025-10-15 06:11:37.791+00	2025-10-15 06:11:37.791+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
DYMYqoAaH8lf2IjQ	1a5d02C9xKYg28f8	workflow:owner	2025-10-09 23:39:27.004+00	2025-10-09 23:39:27.004+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
1	2025-10-10 00:04:21.598+00	data_loaded	DYMYqoAaH8lf2IjQ	1
14	2025-10-15 06:23:07.741+00	manual_success	DYMYqoAaH8lf2IjQ	0
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 14, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 99, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict fH4Kab5UwEvS9oftizPq2Ui54UlHqxuscCR1aFxkfZH4NVQvPFGlkxgX6nbCG6J

RESET ALL;
