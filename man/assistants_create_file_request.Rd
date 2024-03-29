% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api_assistants.R
\name{assistants_create_file_request}
\alias{assistants_create_file_request}
\title{API assistants: create assistant file}
\usage{
assistants_create_file_request(assistant_id, file_id, api_key = api_get_key())
}
\arguments{
\item{assistant_id}{string, the ID of the assistant for which to create a File.}

\item{file_id}{string, a file ID (with purpose="assistants") that the assistant should use. Useful for tools like
retrieval and code_interpreter that can access files.}

\item{api_key}{string, OpenAI API key
(see https://platform.openai.com/account/api-keys)}
}
\value{
\link[httr]{content} of the httr \link[httr]{response} object
or SimpleError (\link[base]{conditions}) enhanced with
two additional fields: `status_code` (response$status_code)
and `message_long` (built on response content)
}
\description{
Create an assistant file by attaching a file (https://platform.openai.com/docs/api-reference/files) to an assistant
(https://platform.openai.com/docs/api-reference/assistants). To get more details, visit
https://platform.openai.com/docs/api-reference/assistants/createAssistantFile
https://platform.openai.com/docs/assistants
}
