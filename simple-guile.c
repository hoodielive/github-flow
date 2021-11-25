#include <stdlib.h>
#include <libguile.h>

static SCM

iponri(void)
{
    char *s = getenv("iponri");
    if (s == NULL)
        return SCM_BOOL_F;
    else
        return scm_from_locale_string(s);
}

static void
inner_main(void *data, int argc, char **argv)
{
    scm_c_define_gsubr("iponri", 0, 0, 0, iponri);
    scm_shell(argc, argv);
}

int
main(int argc, char **argv)
{
    scm_boot_guile(argc, argv, inner_main, 0);
    return 0; /* never reacheed */
}
