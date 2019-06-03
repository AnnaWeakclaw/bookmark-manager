# Bookmark Manager

The website will have the following specification:

- Show a list of bookmarks
- Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only their own bookmarks

```
As an internet user
So that I can find useful websites
I want to be able to see a list of bookmarks
```

| Object                | Message                 |
| --------------------- | ----------------------- |
| website = bookmark    | Being displayed         |
| list of bookmarks     | Show bookmarks          |

Client sends a request to the Controller to get Bookmarks.
Controller calls Model to get data and View to display it and send the view back to the Client as a response.
