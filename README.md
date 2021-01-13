# partners.login.gov

Use the [`Makefile`](Makefile) to run common commands.

## Navigation

Configuration of the primary and side navigation menus is done via a [Jekyll
data file](https://jekyllrb.com/docs/datafiles/) –
[navigation.yml](_data/navigation.yml). This approach is inspired by a
[YAML](https://yaml.org/) syntax defined by
[uswds-jekyll](https://github.com/18F/uswds-jekyll) for its navigation.

The primary navigation links displayed across this sites' header are defined by
a named list called `primary`:

```yml
# _data/navigation.yml
primary:
  - text: Product
    href: /product/
  - text: Why Partner
    href: /why-partner/
  - text: External link
    href: https://18f.gsa.gov
    external: true
```

By default, all links are assumed to be internal to the site. You can add
`external: true` to links that are external. Links to internal pages should
include a trailing slash.

For pages that have declared `layout: page` in their Jekyll front matter, a
named side navigation menu from [navigation.yml](_data/navigation.yml) can be
specified via the `sidenav` variable:

```yml
---
# _pages/lets-partner.md
title: Let's partner
layout: page
sidenav: why-partner
---
```

Below is an example of a named side navigation menu list, using the YAML syntax.
Sub-menu items are specified via the `links` list on the parent item:

```yml
# _data/navigation.yml
why-partner:
  - text: Let's Partner
    href: /lets-partner/
    links:
      - text: Interagency Agreeements
        href: /interagency-agreement/
      - text: Use cases
        href: /use-cases/
  - text: Pricing
    href: /pricing/
```

Finally, side navigation menus are logically associated with primary menu items
by matching the `href` of the primary menu item to the identifier of the side
navigation menu; e.g., `/why-partner/` and `why-partner`.
