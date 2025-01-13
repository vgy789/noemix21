---
share: false
s21-authors:
  - "[[jonnabin]]"
---

В приложении Obsidian может отображаться в странном виде, а может и нормально.

```mermaid
sankey-beta
CPP1 s21_matrix+, CPP-1, 350
CPP2 s21_containers, CPP-1, 800
CPP3 BrickGame_v2.0, CPP-1, 800
CPP4 3DViewer_v2.0+, CPP-1, 800
CPP_Ex, CPP-1, 200
CPP-1, CPP, 2950

CPP5 3DViewer_v2.1, CPP-3, 600
CPP6 3DViewer_v2.2, CPP-3, 600
CPP7 MLP, CPP-3, 600
CPP8 PhotoLab_v1.0, CPP-3, 350
CPP9 MonitoringSystem, CPP-3, 500
CPP-3, CPP, 2650
```

```mermaid
flowchart TD
    subgraph CPP-1
        direction TB
        CPP1_s21_matrix+ --> CPP2_s21_containers
        CPP2_s21_containers --> CPP3_BrickGame_v2.0
        CPP3_BrickGame_v2.0 --> CPP4_3DViewer_v2.0+
        CPP4_3DViewer_v2.0+ --> CPP_Ex
    end

    subgraph CPP-2
        direction TB
        CPP5_3DViewer_v2.1 --> CPP6_3DViewer_v2.2
        CPP6_3DViewer_v2.2 --> CPP7_MLP
        CPP7_MLP --> CPP8_PhotoLab_v1.0
        CPP8_PhotoLab_v1.0 --> CPP9_MonitoringSystem
    end

```

```mermaid
classDiagram

    namespace C {
        class C1 {
            C2_SimpleBashUtils : 450
            C3_s21_string : 600
            C5_s21_decimal : 800
            C6_s21_matrix : 250
            C7_BrickGame_v1_0 : 800
            C_Ex : 200
        }

        class C2 {
            C4_s21_math : 500
            C8_3DViewer_v1_0 : 900
        }
    }

    namespace DO {
        class DO1 {
            DO1_Linux : 200
            DO2_Linux_Network : 350
            DO5_SimpleDocker : 200
            DO6_CICD : 200
            DO_Ex_t : 200
        }

        class DO2 {
            DO3_LinuxMonitoring_v1_0 : 350
            DO4_LinuxMonitoring_v2_0 : 350
        }

        class DO3 {
            DO7_Project_7 : 600
            DO8_Project_8 : 600
            DO9_Project_9 : 600
            DO10_Project_10 : 600
            DO11_Project_11 : 600
            DO12_Project_12 : 600
            DO13_Project_13 : 800
            DO14_Project_14 : 800
        }
    }

    namespace SQL {
        class SQL1 {
            SQL1_Main : 1500
            SQL_Ex : 200
        }

        class SQL2 {
            SQL3_RetailAnalytics_v1_0 : 300
        }
    }

    C1 --> C2
    DO1 --> DO2
    DO2 --> DO3
    SQL1 --> SQL2
```



---



```mermaid
classDiagram

    class C {
        C1 : 3100
        C2 : 1400
    }

    class C1 {
        C2_SimpleBashUtils : 450
        C3_s21_string : 600
        C5_s21_decimal : 800
        C6_s21_matrix : 250
        C7_BrickGame_v1_0 : 800
        C_Ex : 200
    }

    class C2 {
        C4_s21_math : 500
        C8_3DViewer_v1_0 : 900
    }

    class DevOPS {
        DO1 : 1150
        DO2 : 700
        DO3 : 5200
    }

    class DO1 {
        DO1_Linux : 200
        DO2_Linux_Network : 350
        DO5_SimpleDocker : 200
        DO6_CICD : 200
        DO_Ex_t : 200
    }

    class DO2 {
        DO3_LinuxMonitoring_v1_0 : 350
        DO4_LinuxMonitoring_v2_0 : 350
    }

    class DO3 {
        DO7_Project_7 : 600
        DO8_Project_8 : 600
        DO9_Project_9 : 600
        DO10_Project_10 : 600
        DO11_Project_11 : 600
        DO12_Project_12 : 600
        DO13_Project_13 : 800
        DO14_Project_14 : 800
    }

    class SQL {
        SQL1 : 1700
        SQL2 : 600
    }

    class SQL1 {
        SQL1_Main : 1500
        SQL_Ex : 200
    }

    class SQL2 {
        SQL3_RetailAnalytics_v1_0 : 300
    }

    C --> C1
    C --> C2
    DevOPS --> DO1
    DevOPS --> DO2
    DevOPS --> DO3
    SQL --> SQL1
    SQL --> SQL2
```





---




```mehrmaid
flowchart TD

    subgraph C
        direction TB
        subgraph C1
            direction LR
            C2_SimpleBashUtils --> C3_s21_string
            C3_s21_string --> C5_s21_decimal
            C5_s21_decimal --> C6_s21_matrix
            C6_s21_matrix --> C7_BrickGame_v1.0
            C7_BrickGame_v1.0 --> C_Ex
        end

        subgraph C2
            direction TB
            C_Ex --> C4_s21_math
            C4_s21_math --> C8_3DViewer_v1.0
        end
    end
C2_SimpleBashUtils["[[C2 SimpleBashUtils]]"]
    subgraph DevOPS
        direction TB
        subgraph DO-1
            direction TB
            C6_s21_matrix --> DO1_Linux
            DO1_Linux --> DO2_Linux_Network
            DO2_Linux_Network --> DO5_SimpleDocker
            DO5_SimpleDocker --> DO6_CICD
            DO6_CICD --> DO_Ex-t
        end

        subgraph DO-2
            direction TB
            DO3_LinuxMonitoring_v1.0 --> DO4_LinuxMonitoring_v2.0
        end

        subgraph DO-3
            direction TB
            DO7_DevOps_Project_7 --> DO7_DevOps_Project_8
            DO7_DevOps_Project_8 --> DO7_DevOps_Project_9
            DO7_DevOps_Project_9 --> DO7_DevOps_Project_10
            DO7_DevOps_Project_10 --> DO7_DevOps_Project_11
            DO7_DevOps_Project_11 --> DO7_DevOps_Project_12
            DO7_DevOps_Project_12 --> DO7_DevOps_Project_13
            DO7_DevOps_Project_13 --> DO7_DevOps_Project_14
        end

    end


    subgraph SQL
        direction TB
        subgraph SQL-1
            direction TB
            C6_s21_matrix --> SQL1
            SQL1 --> SQL_Ex
        end

        subgraph SQL-2
            direction TB
            SQL2_Info21_v1.0 --> SQL3_RetailAnalytics_v1.0
        end
    end
```


```mehrmaid
flowchart TD

    subgraph C
        direction TB
        subgraph C1
            direction LR
            C2_SimpleBashUtils --> C3_s21_string
            C3_s21_string --> C5_s21_decimal
            C5_s21_decimal --> C6_s21_matrix
            C6_s21_matrix --> C7_BrickGame_v1.0
            C7_BrickGame_v1.0 --> C_Ex
        end

        subgraph C2
            direction TB
            C_Ex --> C4_s21_math
            C4_s21_math --> C8_3DViewer_v1.0
        end
    end
C2_SimpleBashUtils["[[C2 SimpleBashUtils]]"]
C3_s21_string["[[C3 s21_string+]]"]
```



```mermaid
sankey-beta
DevOPS, DO-1, 1150
DO-1, DO1_Linux, 200
DO-1, DO2_Linux Network, 350
DO-1, DO5_SimpleDocker, 200
DO-1, DO6_CICD, 200
DO-1, DO_Ex-t, 200
```


```mehrmaid
flowchart TD

    subgraph C
        direction TB
        subgraph C1
            direction LR
            C2_SimpleBashUtils["[[C2 SimpleBashUtils]]"] --> C3_s21_string
            C3_s21_string --> C5_s21_decimal
            C5_s21_decimal --> C6_s21_matrix
            C6_s21_matrix --> C7_BrickGame_v1.0
            C7_BrickGame_v1.0 --> C_Ex
        end

        subgraph C2
            direction TB
            C_Ex --> C4_s21_math
            C4_s21_math --> C8_3DViewer_v1.0
        end
    end

```


```mermaid
sankey-beta

C, C1, 3100
C1, C2 SimpleBashUtils, 450
C1, C3 s21_string+, 600
C1, C5 s21_decimal, 800
C1, C6 s21_matrix, 250
C1, C7 BrickGame_v1.0, 800
C1, C_Ex, 200
C, C2, 1400
C2, C4 s21_math, 500
C2, C8 3DViewer_v1.0, 900

```

```mermaid
sankey-beta
C2 SimpleBashUtils, C-1, 450
C3 s21_string+, C-1, 600
C5 s21_decimal, C-1, 800
C6 s21_matrix, C-1, 250
C7 BrickGame_v1.0, C-1, 800
C_Ex, C-1, 200

C4 s21_math, C-2, 500
C8 3DViewer_v1.0, C-2, 900

C-1, C, 3100
C-2, C, 1400

```

---

```mermaid
sankey-beta
DevOPS, DO-1, 1150
DO-1, DO1_Linux, 200
DO-1, DO2_Linux Network, 350
DO-1, DO5_SimpleDocker, 200
DO-1, DO6_CICD, 200
DO-1, DO_Ex-t, 200
```


```mehrmaid
flowchart TD

    subgraph C
        direction TB
        subgraph C1
            direction LR
            C2_SimpleBashUtils["[[C2 SimpleBashUtils]]"] --> C3_s21_string
            C3_s21_string --> C5_s21_decimal
            C5_s21_decimal --> C6_s21_matrix
            C6_s21_matrix --> C7_BrickGame_v1.0
            C7_BrickGame_v1.0 --> C_Ex
        end

        subgraph C2
            direction TB
            C_Ex --> C4_s21_math
            C4_s21_math --> C8_3DViewer_v1.0
        end
    end

```


```mehrmaid
flowchart LR
A --> B & C --> D --> E --> F & G
G --> F
C("[[thisisalink]]")

F("#uni")
```




```mermaid
sankey-beta

C, C1, 3100
C1, C2 SimpleBashUtils, 450
C1, C3 s21_string+, 600
C1, C5 s21_decimal, 800
C1, C6 s21_matrix, 250
C1, C7 BrickGame_v1.0, 800
C1, C_Ex, 200
C, C2, 1400
C2, C4 s21_math, 500
C2, C8 3DViewer_v1.0, 900

```
