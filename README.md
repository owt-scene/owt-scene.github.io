# README

## Hugo Configuration

- Hugo is installed as a [devcontainer feature](https://github.com/devcontainers/features/tree/main/src/hugo).
- Theme is [Blowfish](https://blowfish.page/).
  - Installed as a Git submodule.

### Calendar (ICS/Ical) Integration

- Using
  [raoulb/hugo-ical-templates](https://github.com/raoulb/hugo-ical-templates) to
  create ics files for events.

### Forms Integration

- Using [Google
  Forms](https://github.com/dwyl/learn-to-send-email-via-google-script-html-no-server)
  for form submission.
- Forms use [PureCSS](https://purecss.io/) for styling elements.

## Updates

### Hugo

- Rebuild devcontainer to update Hugo.

### Blowfish Theme

- See [blowfish docs](https://blowfish.page/docs/installation/#update-using-git).

## Custom Shortcodes

### event-details

- Renders the event details, taken from the frontmatter of the event page, in a nice way on the page.
- Includes description, date, time and organiser details.

Usage:

```hugo
{{< event-details >}}
```

### ics

- Add a button that links to the ics file for an event for easy sharing/copying.

Usage:

```hugo
{{< ics >}}
```

### rsvp

- Show a form to gather RSVP from attendees.
- Form is powered by Google Forms and submits form response to a Google Sheet
  for event coordinating.

Usage:

```hugo
{{< rsvp next=.RelPermalink >}}
```

### organiser

- Easily show an organiser name and links to their socials.
- Social can be displayed by providing the ID/account for the social, link is
  generated automatically.

Usage:

```hugo
{{< organiser name="Josh Rich" github="joshuar" linkedin="joshuarichau" >}}
```

## Acknowledgments

- ICal handling thanks to [github.com/raoulb/hugo-ical-templates](https://github.com/raoulb/hugo-ical-templates).
- Google forms thanks to [github.com/dwyl/learn-to-send-email-via-google-script-html-no-server](https://github.com/dwyl/learn-to-send-email-via-google-script-html-no-server).
