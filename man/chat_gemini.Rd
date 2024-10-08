% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-gemini.R
\name{chat_gemini}
\alias{chat_gemini}
\title{Chat with a Google Gemini model}
\usage{
chat_gemini(
  system_prompt = NULL,
  turns = NULL,
  base_url = "https://generativelanguage.googleapis.com/v1beta/",
  api_key = gemini_key(),
  model = NULL,
  api_args = list(),
  echo = NULL
)
}
\arguments{
\item{system_prompt}{A system prompt to set the behavior of the assistant.}

\item{turns}{A list of turns to start the chat with (i.e., continuing a
previous conversation). If not provided, the conversation begins from
scratch. Do not provide non-\code{NULL} values for both \code{turns} and
\code{system_prompt}.

Each message in the list should be a named list with at least \code{role}
(usually \code{system}, \code{user}, or \code{assistant}, but \code{tool} is also possible).
Normally there is also a \code{content} field, which is a string.}

\item{base_url}{The base URL to the endpoint; the default uses OpenAI.}

\item{api_key}{The API key to use for authentication. You generally should
not supply this directly, but instead set the \code{GOOGLE_API_KEY} environment
variable.}

\item{model}{The model to use for the chat. The default, \code{NULL}, will pick
a reasonable default, and tell you about. We strongly recommend explicitly
choosing a model for all but the most casual use.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\value{
A \link{Chat} object.
}
\description{
Chat with a Google Gemini model
}
\seealso{
Other chatbots: 
\code{\link{chat_claude}()},
\code{\link{chat_github}()},
\code{\link{chat_groq}()},
\code{\link{chat_ollama}()},
\code{\link{chat_openai}()},
\code{\link{chat_perplexity}()}
}
\concept{chatbots}
