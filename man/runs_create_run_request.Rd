% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api_runs.R
\name{runs_create_run_request}
\alias{runs_create_run_request}
\title{API runs: create run}
\usage{
runs_create_run_request(
  thread_id,
  assistant_id,
  model = NULL,
  instructions = NULL,
  additional_instructions = NULL,
  tools = NULL,
  metadata = NULL,
  api_key = api_get_key()
)
}
\arguments{
\item{thread_id}{string, the ID of the thread to run}

\item{assistant_id}{string, the ID of the assistant to use to execute this run}

\item{model}{NULL/string, the ID of the model (https://platform.openai.com/docs/api-reference/models) to be used to
execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the
model associated with the assistant will be used.}

\item{instructions}{NULL/string, overrides the instructions
(https://platform.openai.com/docs/api-reference/assistants/createAssistant) of the assistant. This is useful for
modifying the behavior on a per-run basis.}

\item{additional_instructions}{NULL/string, appends additional instructions at the end of the instructions for the
run. This is useful for modifying the behavior on a per-run basis without overriding other instructions.}

\item{tools}{NULL/named list, override the tools the assistant can use for this run. This is useful for modifying the
behavior on a per-run basis. Example:
\preformatted{
# code interpreter tool
list(
  type = "code_interpreter"
)
# or retrieval tool
list(
  type = "retrieval"
)
# or function tool
list(
  type = "retrieval",
  function = list(
    # string (optional), a description of what the function
    # does, used by the model to choose when and how to call
    # the function.
    description = 
    # string (required), the name of the function to be called.
    # Must be a-z, A-Z, 0-9, or contain underscores and dashes,
    # with a maximum length of 64.
    name =
    # list (optional), the parameters the functions accepts.
    # See the guide
    # (https://platform.openai.com/docs/guides/text-generation/function-calling)
    # for examples. Omitting parameters defines a function
    # with an empty parameter list.
    parameters = list (
    )
 )
)}}

\item{metadata}{NULL/list, set of 16 key-value pairs that can be attached to an object. This can be useful for
storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long
and values can be a maximum of 512 characters long.}

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
Create a run. To get more details, visit
https://platform.openai.com/docs/api-reference/runs/createRun
https://platform.openai.com/docs/assistants
}
\examples{
\dontrun{
runs_create_run_request(
  thread_id = "thread_abc123",
  assistant_id = "asst_abc123"
)
}

}
