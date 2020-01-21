/*Titulo: Dibujo Libre
Alumno: Hugo Alberto González Uribe
NUA: 146871
Fecha: 09 de Noviembre de 2019
*/
#include <iostream>
using namespace std;
int main()
{
    char c1 = '%', c2 = '/';
    int w, v, x, y, z;
    int i = 0;
    for (x = 1; x <= 5; x++)
    {
        for (v = 1; v <= 6; v++)
        {
            //Part 1,1:
            for (w = 1; w <= (0 + x); w ++)
            {
                cout << c1;
            }
            //Part 2,1:
            for (w = 8; w >= (-1 + x); w --)
            {
                cout << c2;
            }
            //Part 2,2:
            for (w = 8; w >= (-1 + x); w --)
            {
                cout << " ";
            }
            //Part 1,2
            for (w = 1; w <= (0 + x); w ++)
            {
                cout << c1;
            }
        }
    }
    for (x = 1; x <= 120; x ++)
    {
        cout << "=";
    }
    //Ending HEader 1:

    //Inbetween:
    cout << endl;

    for (x = 1; x <= 114; x ++)
    {
        cout << " ";
    }
    cout << "_ _ _ ";
    for (x = 1; x <= 113; x ++)
    {
        cout << " ";
    }
    cout << "I U U U";
    for (x = 1; x <= 113; x ++)
    {
        cout << " ";
    }
    cout << "I      ";
    for (x = 1; x <= 90; x ++)
    {
        cout << " ";
    }
    cout << "Oh Romeo, Oh Romeo";
    cout << "     I O/   ";
    for (x = 1; x <= 95; x ++)
    {
        cout << " ";
    }
    cout << "Where are thou?";
    cout << "   I '    ";
    for (x = 1; x <= 113; x ++)
    {
        cout << " ";
    }
    cout << "I  _   ";
    for (x = 1; x <= 79; x ++)
    {
        cout << " ";
    }
    cout << "O/";
    for (x = 1; x <= 32; x ++)
    {
        cout << " ";
    }
    cout << "I l l  ";
    for (x = 1; x <= 78; x ++)
    {
        cout << " ";
    }
    cout << "/|";
    for (x = 1; x <= 33; x ++)
    {
        cout << " ";
    }
    cout << "I l l  ";
    for (x = 1; x <= 79; x ++)
    {
        cout << "_";
    }
    cout << "/|";
    for (x = 1; x <= 32; x ++)
    {
        cout << "_";
    }
    cout << "I 1 1  ";
    cout << endl;
    cout << endl;


    //Begining HEader 2:
    for (x = 1; x <= 120; x ++)
    {
        cout << "=";
    }
    for (x = 1; x <= 5; x++)
    {
        for (v = 1; v <= 6; v++)
        {
            //Part 1,1:
            for (w = 5; w > (-1 + x); w --)
            {
                cout << c1;
            }
            //Part 2,1:
            for (w = 1; w <= (4 + x); w ++)
            {
                cout << c2;
            }
            //Part 2,2:
            for (w = 1; w <= (4 + x); w ++)
            {
                cout << " ";
            }
            //Part 1,2
            for (w = 5; w > (-1 + x); w --)
            {
                cout << c1;
            }
        }
    }
    for (x = 1; x <= 3; x ++)
    {
        for (v = 1; v <= 40; v ++)
        {
            cout << " _ ";
        }
        for (v = 1; v <= 40; v ++)
        {
            cout << "I I";
        }
    }
}
