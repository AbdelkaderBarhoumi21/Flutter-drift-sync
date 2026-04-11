# HTTP Status Codes

HTTP status codes are grouped into ranges, each with a specific meaning.

## Status Code Ranges

| Range     | Category        | Meaning                                             |
| --------- | --------------- | --------------------------------------------------- |
| **1xx**   | Informational   | Request received, continuing process                |
| **2xx**   | Success         | Request was successfully received and processed     |
| **3xx**   | Redirection     | Further action needed to complete the request       |
| **4xx**   | Client Error    | The request contains bad syntax or cannot be fulfilled |
| **5xx**   | Server Error    | The server failed to fulfill a valid request        |

## Why `>= 200 && < 300`?

Because **all 2xx codes mean success**, just different kinds of success. Anything **300 or above** is either a redirect, a client error, or a server error — all of which should be treated as **not successful**.

```dart
response.statusCode >= 200 && response.statusCode < 300
```

## 2xx - Success

| Code    | Name              | Meaning                                            |
| ------- | ----------------- | -------------------------------------------------- |
| **200** | OK                | Standard success                                   |
| **201** | Created           | A new resource was created (e.g., after POST)      |
| **202** | Accepted          | Request accepted but not yet processed             |
| **204** | No Content        | Success, but no body returned (e.g., after DELETE) |

## 3xx - Redirection

| Code    | Name                | Meaning                                    |
| ------- | ------------------- | ------------------------------------------ |
| **301** | Moved Permanently   | Resource moved to a new URL forever        |
| **302** | Found               | Resource temporarily at a different URL    |
| **304** | Not Modified        | Cached version is still valid              |

## 4xx - Client Errors (your fault)

| Code    | Name                  | Meaning                                        |
| ------- | --------------------- | ---------------------------------------------- |
| **400** | Bad Request           | Invalid syntax or missing fields               |
| **401** | Unauthorized          | Not authenticated (no token / bad token)       |
| **403** | Forbidden             | Authenticated but not allowed                  |
| **404** | Not Found             | Resource doesn't exist                         |
| **409** | Conflict              | Conflicts with current state (e.g., duplicate) |
| **422** | Unprocessable Entity  | Validation failed                              |
| **429** | Too Many Requests     | Rate limited                                   |

## 5xx - Server Errors (server's fault)

| Code    | Name                   | Meaning                                          |
| ------- | ---------------------- | ------------------------------------------------ |
| **500** | Internal Server Error  | Generic server crash                             |
| **502** | Bad Gateway            | Server got an invalid response from upstream     |
| **503** | Service Unavailable    | Server is down or overloaded                     |
| **504** | Gateway Timeout        | Upstream server didn't respond in time           |
