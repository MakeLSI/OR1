BEGIN{f=1;}
{
    if (f == 0 && $1 == "END") f = 1;
    if (f == 1) print $0;
    if (f == 1 && $1 == "OBS") f = 0;
}
