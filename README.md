# Iterative Design and Finite Element Analysis of a Solid Steel Sign Post Under Lateral Load

## Summary

A sign post holds a sign at a height where people can see it, and it must do this safely in all weather. It carries the weight of the panel and has to resist sideways loads, mostly from wind, without bending too far or failing at its base. Sign posts are common along roads, around campuses and at site entrances, so their strength matters for public safety as well as for appearance [^1][^2].

In this project, I designed a tall solid steel sign post in SolidWorks. It has a square base plate, a vertical post and a flat sign panel at the top. I then checked its strength with a static structural analysis in ANSYS Workbench. The base is held fixed, and standard earth gravity (9806.6 mm/s²) acts on the structure as a horizontal load. The first design was weak: its minimum factor of safety (FoS) was only 0.281, so it would yield under this load, and the top of the post moved about 660 mm sideways. I changed the design and analyzed it four times in total, and each change was followed by a new analysis. The minimum FoS rose from 0.281 to 0.527, then 0.610, and finally 1.521. The maximum equivalent stress fell from 889.6 MPa to 164.4 MPa, and the maximum deformation fell from 659.7 mm to 54.1 mm. This was paid for with extra material, since the mass rose from 360.5 kg to 595.1 kg. The final design is the first one with an FoS above one.

The result has clear limits. I tried only a few optimization techniques: I changed the geometry by hand, re-meshed, and compared the FoS from one design to the next. I did not run a systematic optimization, a mesh convergence study or a wind load analysis. The load is a simple horizontal gravity load, so an FoS of 1.52 is not proof that the post is safe in real service. More analyses are needed before the design can be trusted, and they are listed under Design Limitations and Future Improvements.

## Computational Design

|   View    |                                 Image                                 |
| :-------: | :-------------------------------------------------------------------: |
| Isometric | ![Isometric View](/images/render_images/sign_post_isometric_view.JPG) |
|   Left    |      ![Left View](/images/render_images/sign_post_left_view.JPG)      |
|   Right   |     ![Right View](/images/render_images/sign_post_right_view.JPG)     |
|   Back    |      ![Back View](/images/render_images/sign_post_back_view.JPG)      |
|   Front   |     ![Front View](/images/render_images/sign_post_front_view.JPG)     |
|    Top    |       ![Top View](/images/render_images/sign_post_top_view.JPG)       |
|  Bottom   |    ![Bottom View](/images/render_images/sign_post_bottom_view.JPG)    |
|  Section  |   ![Section View](/images/render_images/sign_post_section_view.JPG)   |

## Static Structural Analysis

### Initial Design

| Name                     |                                                   Image                                                   |
| :----------------------- | :-------------------------------------------------------------------------------------------------------: |
| Analysis Settings        |        ![Initial Analysis Settings](/images/analysis_images/initial/initial_analysis_settings.jpg)        |
| Total Deformation        |        ![Initial Total Deformation](/images/analysis_images/initial/initial_total_deformation.jpg)        |
| Maximum Principal Stress | ![Initial Maximum Principal Stress](/images/analysis_images/initial/initial_maximum_principal_stress.jpg) |
| Factor of Safety         |          ![Initial Factor of Safety](/images/analysis_images/initial/initial_safety_factor.jpg)           |

### Final Design

| Name                     |                                                Image                                                |
| :----------------------- | :-------------------------------------------------------------------------------------------------: |
| Analysis Settings        |        ![Final Analysis Settings](/images/analysis_images/final/final_analysis_settings.jpg)        |
| Total Deformation        |        ![Final Total Deformation](/images/analysis_images/final/final_total_deformation.jpg)        |
| Maximum Principal Stress | ![Final Maximum Principal Stress](/images/analysis_images/final/final_maximum_principal_stress.jpg) |
| Factor of Safety         |          ![Final Factor of Safety](/images/analysis_images/final/final_safety_factor.jpg)           |

### Design Iterations

| Elastic Modulus | Poisson's Ratio |  Density   | Standard Earth Gravity |
| :-------------: | :-------------: | :--------: | :--------------------: |
|     200 GPa     |       0.3       | 7850 kg/m³ |      9806.6 mm/s²      |

| Design | Nodes  | Elements | Mass (kg) | Max. Deformation (mm) | Max. Principal Stress (MPa) | Max. Equivalent Stress (MPa) | Minimum FoS |
| :----- | :----: | :------: | :-------: | :-------------------: | :-------------------------: | :--------------------------: | :---------: |
| First  | 34,623 |  19,229  |   360.5   |        659.71         |           843.44            |            889.59            |    0.281    |
| Second | 90,671 |  57,200  |   407.6   |        437.74         |           525.30            |            474.53            |    0.527    |
| Third  | 99,907 |  63,218  |   439.0   |        363.69         |           466.60            |            409.97            |    0.610    |
| Fourth | 48,038 |  29,527  |   595.1   |         54.09         |           172.07            |            164.36            |  **1.521**  |

## Technologies Used

| Purpose  |                   Name                    |
| :------: | :---------------------------------------: |
|  Design  |     SolidWorks 2024 (Student Version)     |
| Analysis | ANSYS Workbench 2026 R1 (Student Version) |

## Applications [^1][^2][^3]

- Road and Highway Signs, Such as Direction, Warning and Regulatory Signs
- Wayfinding Signs for Campuses, Hospitals and Large Sites
- Entrance, Parking and Site Identification Signs
- Roadside Advertising and Single-Pole Billboards
- Business Park and Industrial Estate Signboards
- Temporary Signs for Construction Zones and Events

## Design Limitations

The design of the sign post was developed as a prototype product. That's why the real-life design considerations, including wind load calculation to a design code, material grade and corrosion protection, anchor bolts and foundation design, welds and connection details, fatigue life, impact safety, proper design specification, monetization, and feasibility, have not been included. The limitations of the analysis are listed below.

### Analyses Needed (Not Done)

The following analyses are necessary before the design can be trusted, and I suggest them as the next steps:

| No  | Analysis                             |
| :-: | :----------------------------------- |
| 01  | Mesh convergence study               |
| 02  | Wind load analysis                   |
| 03  | Combined load cases                  |
| 04  | Modal analysis                       |
| 05  | Linear buckling analysis             |
| 06  | Fatigue analysis                     |
| 07  | Parametric and topology optimization |
| 08  | Foundation or soil support analysis  |

## Future Improvements

The next step is to make the load case realistic. Replacing the horizontal gravity load with a wind load calculated to a design code, such as the AASHTO specification for structural supports for highway signs [^3][^4], and adding the weight of the sign would show how the post behaves in real service. The results should first be verified with a mesh convergence study, especially at the base where a stress singularity may occur, and with a hand calculation of the cantilever beam. Modal, buckling and fatigue analyses should follow, since wind loading is repeated and the post is slender. Once the load and the model can be trusted, a systematic optimization, such as a parametric study or topology optimization in ANSYS, can reduce the mass while keeping a target factor of safety and a limit on the top deflection. A hollow tube, or a section that is deeper in the direction of the load, would give more bending strength for less material, and gussets, ribs or a larger fillet could lower the stress where the post meets the base plate. The fixed support should also be replaced with a model of the base plate, anchor bolts and foundation. Finally, a real steel grade with corrosion protection such as galvanizing should be chosen, a passively safe or breakaway design should be considered for posts near roads [^2], and manufacturing drawings, a bill of materials and a cost estimate should be prepared.

## References

[^1]: [Structural design of signposts and billboards](https://structville.com/2020/08/structural-design-of-signposts-and-billboards.html)

[^2]: [Types of sign posts available in the UK](https://signtradesupplies.co.uk/blogs/news/choosing-the-right-sign-posts-a-quick-guide-for-uk-signage-projects)

[^3]: [Development and Calibration of AASHTO LRFD Specifications for Structural Supports for Highway Signs, Luminaires, and Traffic Signals (NCHRP Report 796)](https://nap.nationalacademies.org/catalog/22240/development-and-calibration-of-aashto-lrfd-specifications-for-structural-supports-for-highway-signs-luminaires-and-traffic-signals)

[^4]: [Wind Drag Coefficients for Highway Signs and Support Structures (NCHRP Research Report 1012)](https://trb.org/Main/Blurbs/182921.aspx)
