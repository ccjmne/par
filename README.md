par is a paragraph reformatter, vaguely similar to fmt, but better
------------------------------------------------------------------

Originally written by Adam M. Costello in 1993 and the
official webpage is still http://www.nicemice.net/par/, but
the development was a bit slow lately (to say it mildly), so a
significant number of patches has been collected. To make one
place where all these patches are collected are perhaps even more
development could happen, I have established this space.

Upstream code has been released under the dual license of
the one which was made by Adam himself (see “Rights and
Responsibilities” in [par.doc](par.doc)) and the standard
[MIT/X11](https://spdx.org/licenses/MIT.html). For clarity, all
development in this repo should be done under MIT license, but
given the nature of the license, Adam is certainly allowed to
relicense these changes to his dual license.

All issues, questions, complaints, or (even better!) patches
should be send via email to
[~mcepl/devel@lists.sr.ht](mailto:~mcepl/devel@lists.sr.ht) email
list (for patches use [git send-email](https://git-send-email.io/)).

The remainder of this document is collection of snippets gathered
from the original Adam’s documents.

------

par is a filter which copies its input to its output,
changing all white characters (except newlines) to spaces,
and reformatting each paragraph.  Paragraphs are separated by
protected, blank, and bodiless lines (see the Terminology section
for definitions), and optionally delimited by indentation (see
the d option in the Options section).

For example, the command “par 44gqr”, given the input:

        John Q. Public writes:
        > Jane Doe writes:
        > >
        > > May I remind people that this newsgroup
        > > is for posting binaries only.  Please keep
        > > all discussion in .d where it belongs.
        > Who appointed you net.god?
        > I'll discuss things here if I feel like it.
        Could you two please take this to e-mail?

        **********************************************
        ** Main's Law: For every action there is an **
        ** equal and opposite government program.   **
        **********************************************

Would produce the output:

        John Q. Public writes:

        > Jane Doe writes:
        >
        > > May I remind people that this
        > > newsgroup is for posting
        > > binaries only.  Please keep
        > > all discussion in .d where it
        > > belongs.
        >
        > Who appointed you net.god?  I'll
        > discuss things here if I feel like
        > it.

        Could you two please take this to
        e-mail?

        ************************************
        ** Main's Law: For every action   **
        ** there is an equal and opposite **
        ** government program.            **
        ************************************
