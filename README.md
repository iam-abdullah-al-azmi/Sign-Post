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

## Future Improvements

Future work should apply a code-based wind load, such as the AASHTO specification [^3][^4], together with the sign's weight, and verify the results with a mesh convergence study and a hand calculation. Modal, buckling and fatigue analyses should follow. A systematic optimization, such as a parametric study or topology optimization, could then reduce the mass while keeping the factor of safety. A hollow section, base gussets and a modeled foundation with anchor bolts would improve realism, and a real steel grade with corrosion protection should be chosen. A breakaway design [^2] and manufacturing drawings could also be considered.

## References

[^1]: [Structural design of signposts and billboards](https://structville.com/2020/08/structural-design-of-signposts-and-billboards.html)

[^2]: [Types of sign posts available in the UK](https://signtradesupplies.co.uk/blogs/news/choosing-the-right-sign-posts-a-quick-guide-for-uk-signage-projects)

[^3]: [Development and Calibration of AASHTO LRFD Specifications for Structural Supports for Highway Signs, Luminaires, and Traffic Signals (NCHRP Report 796)](https://nap.nationalacademies.org/catalog/22240/development-and-calibration-of-aashto-lrfd-specifications-for-structural-supports-for-highway-signs-luminaires-and-traffic-signals)

[^4]: [Wind Drag Coefficients for Highway Signs and Support Structures (NCHRP Research Report 1012)](https://trb.org/Main/Blurbs/182921.aspx)
