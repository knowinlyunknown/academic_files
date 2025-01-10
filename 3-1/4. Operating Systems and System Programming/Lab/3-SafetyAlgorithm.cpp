#include <bits/stdc++.h>
using namespace std;

bool checkPossibility(int need[], vector<int> work)
{
    for (int i = 0; i < work.size(); i++)
    {
        if (need[i] > work[i])
            return false;
    }
    return true;
}

int main()
{
    printf("Enter the number of processes and resources\n");
    int processes, resources;
    cin >> processes >> resources;

    int allocation[processes][resources], maxAlloc[processes][resources], available[resources], need[processes][resources];

    cout << "Enter the allocation matrix\n";
    for (int i = 0; i < processes; i++)
        for (int j = 0; j < resources; j++)
            cin >> allocation[i][j];

    cout << "Enter the max allocation matrix\n";
    for (int i = 0; i < processes; i++)
        for (int j = 0; j < resources; j++)
            cin >> maxAlloc[i][j];

    cout << "Enter the available matrix\n";
    for (int i = 0; i < resources; i++)
        cin >> available[i];

    for (int i = 0; i < processes; i++)
        for (int j = 0; j < resources; j++)
            need[i][j] = maxAlloc[i][j] - allocation[i][j];

    vector<bool> finish(processes, false);
    vector<int> work(available, available + resources);

    for (int i = 1; i <= resources; i++)
    {
        for (int j = 0; j < processes; j++)
        {
            if (finish[j] == false and checkPossibility(need[j], work))
            {
                for (int i = 0; i < resources; i++)
                {
                    work[i] += allocation[j][i];
                }
                finish[j] = true;
            }
        }
    }

    bool flag = true;
    for (int i = 0; i < processes; i++)
    {
        if (finish[i] == false)
        {
            flag = false;
            break;
        }
    }

    if (flag)
    {
        cout << "Safe State. ";
    }
    else
        cout << "Unsafe State";
    return 0;
}