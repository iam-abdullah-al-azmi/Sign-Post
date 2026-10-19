# Computational Design and Analysis of a Sign Post

## Summary

A sign post holds a sign at a height where people can see it, and it must do this safely in all weather. It carries the weight of the panel and has to resist sideways loads, mostly from wind, without bending too far or failing at its base. Sign posts are common along roads, around campuses and at site entrances, so their strength matters for public safety as well as for appearance [^1][^2].

In this project, I designed a tall solid steel sign post in SolidWorks. It has a square base plate, a vertical post and a flat sign panel at the top. I then checked its strength with a static structural analysis in ANSYS Workbench. The base is held fixed, and standard earth gravity (9806.6 mm/s²) acts on the structure as a horizontal load. The first design was weak: its minimum factor of safety (FoS) was only 0.281, so it would yield under this load, and the top of the post moved about 660 mm sideways. I changed the design and analyzed it four times in total, and each change was followed by a new analysis. The minimum FoS rose from 0.281 to 0.527, then 0.610, and finally 1.521. The maximum equivalent stress fell from 889.6 MPa to 164.4 MPa, and the maximum deformation fell from 659.7 mm to 54.1 mm. This was paid for with extra material, since the mass rose from 360.5 kg to 595.1 kg. The final design is the first one with an FoS above one.

The result has clear limits. I tried only a few optimization techniques: I changed the geometry by hand, re-meshed, and compared the FoS from one design to the next. I did not run a systematic optimization, a mesh convergence study or a wind load analysis. The load is a simple horizontal gravity load, so an FoS of 1.52 is not proof that the post is safe in real service. More analyses are needed before the design can be trusted, and they are listed under Design Limitations and Future Improvements.

| Name                     |                                 Image                                 |
| :----------------------- | :-------------------------------------------------------------------: |
| Sign Post (final design) | ![Isometric View](/images/render_images/sign_post_isometric_view.JPG) |

## CAD Design

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

## Analysis

### Static Structural

#### Initial Design

| Name                     |                                                   Image                                                   |
| :----------------------- | :-------------------------------------------------------------------------------------------------------: |
| Analysis Settings        |        ![Initial Analysis Settings](/images/analysis_images/initial/initial_analysis_settings.jpg)        |
| Total Deformation        |        ![Initial Total Deformation](/images/analysis_images/initial/initial_total_deformation.jpg)        |
| Maximum Principal Stress | ![Initial Maximum Principal Stress](/images/analysis_images/initial/initial_maximum_principal_stress.jpg) |
| Factor of Safety         |          ![Initial Factor of Safety](/images/analysis_images/initial/initial_safety_factor.jpg)           |

#### Final Design

| Name                     |                                                Image                                                |
| :----------------------- | :-------------------------------------------------------------------------------------------------: |
| Analysis Settings        |        ![Final Analysis Settings](/images/analysis_images/final/final_analysis_settings.jpg)        |
| Total Deformation        |        ![Final Total Deformation](/images/analysis_images/final/final_total_deformation.jpg)        |
| Maximum Principal Stress | ![Final Maximum Principal Stress](/images/analysis_images/final/final_maximum_principal_stress.jpg) |
| Factor of Safety         |          ![Final Factor of Safety](/images/analysis_images/final/final_safety_factor.jpg)           |

#### Design Iterations

All four designs used the same set-up: structural steel (E = 200 GPa, ν = 0.3, density 7850 kg/m³), a fixed support at the base, and standard earth gravity (9806.6 mm/s²) acting as a horizontal load. The FoS is the yield strength of 250 MPa divided by the maximum equivalent stress. The images above show the initial and final designs, and the table below compares all four.

| Design             | Nodes  | Elements | Mass (kg) | Max. Deformation (mm) | Max. Principal Stress (MPa) | Max. Equivalent Stress (MPa) | Minimum FoS |
| :----------------- | :----: | :------: | :-------: | :-------------------: | :-------------------------: | :--------------------------: | :---------: |
| Initial (1st)      | 34,623 |  19,229  |   360.5   |        659.71         |           843.44            |            889.59            |    0.281    |
| Second             | 90,671 |  57,200  |   407.6   |        437.74         |           525.30            |            474.53            |    0.527    |
| Third              | 99,907 |  63,218  |   439.0   |        363.69         |           466.60            |            409.97            |    0.610    |
| Fourth (final)     | 48,038 |  29,527  |   595.1   |         54.09         |           172.07            |            164.36            |  **1.521**  |

- The first three designs have an FoS below one, which means the steel would yield under this load.
- Each change lowered the stress and the deformation. Only the fourth design gives an FoS above one.
- The fourth design is 65% heavier than the first, but its maximum stress is about 82% lower and its maximum deformation about 92% lower.
- In the initial and final designs, the minimum FoS is at the fixed base, where the post meets the base plate.

## Technologies Used

| Purpose  |               Name                |
| :------: | :-------------------------------: |
| Analysis |       ANSYS Workbench 2024        |
|  Design  | SolidWorks 2024 (Student Version) |

## Applications [^1][^2][^3]

- Road and Highway Signs, Such as Direction, Warning and Regulatory Signs
- Wayfinding Signs for Campuses, Hospitals and Large Sites
- Entrance, Parking and Site Identification Signs
- Roadside Advertising and Single-Pole Billboards
- Business Park and Industrial Estate Signboards
- Temporary Signs for Construction Zones and Events

## Design Limitations

The design of the sign post was developed as a prototype product. That's why the real-life design considerations, including wind load calculation to a design code, material grade and corrosion protection, anchor bolts and foundation design, welds and connection details, fatigue life, impact safety, proper design specification, monetization, and feasibility, have not been included. The limitations of the analysis are listed below.

- **Only a few optimization techniques were tried.** I improved the design in four steps by changing the geometry by hand, re-meshing, and comparing the results. I did not use a systematic method such as a parametric study, response surface optimization, or topology optimization. The fourth design is therefore an acceptable design, not the best one, and its 65% increase in mass shows that it may be heavier than necessary.
- **The load is a simplified one.** Standard earth gravity acts as a horizontal load. This is not a real wind load, which depends on the wind speed, the sign area, the drag coefficient, the height and the local terrain [^3][^4]. It also does not include the sign's own weight acting in the vertical direction, ice, or impact loads.
- **The factor of safety is low and is based on one load case.** The final minimum FoS is 1.52 for a single static load. Design codes normally combine several load cases and apply load factors, so an FoS this close to one leaves a small margin [^3].
- **The base may give a stress singularity.** The minimum FoS appears where the post meets the fixed base. A fixed support in linear analysis can produce a stress that rises as the mesh is refined, so the peak stress there may be inaccurate [^5][^6]. I did not run a mesh convergence study to check this.
- **The base is a perfect fixed support.** A real post sits on a foundation, anchor bolts or soil, which are not rigid. A fixed support makes the post stiffer than it would be in practice.
- **The mesh was not the same for all designs.** The number of elements differs from design to design (from 19,229 to 63,218), so part of the difference between the designs could come from the mesh and not only from the geometry.
- **Only a static, linear and elastic analysis was done.** Material yielding, large deflection (the final top deflection is 54 mm), buckling, vibration and fatigue are not captured. The FoS is also based on the maximum equivalent stress and a 250 MPa yield strength of generic structural steel.
- **No physical test was done.** The results are not validated against hand calculations, a standard, or an experiment.

### Analyses Needed (Not Done)

The following analyses are necessary before the design can be trusted, and I suggest them as the next steps:

| No  | Analysis                                  | Purpose                                                                                                                 |
| :-: | :---------------------------------------- | :---------------------------------------------------------------------------------------------------------------------- |
| 01  | Mesh convergence study                    | Check that the stress and the FoS do not change with a finer mesh, especially at the base, and find the singularity     |
| 02  | Hand calculation of the cantilever beam   | Check the ANSYS result of deflection and stress with a simple bending formula                                           |
| 03  | Wind load analysis                        | Apply a pressure on the sign panel and the post that is calculated with a design code, instead of the gravity load      |
| 04  | Combined load cases                       | Add the sign's weight with wind, and apply the load factors required by the code                                        |
| 05  | Modal analysis                            | Find the natural frequencies of the post and check that they are away from wind-induced vibration                       |
| 06  | Linear buckling analysis                  | Check the stability of the slender post under its own weight and the sign's weight                                      |
| 07  | Fatigue analysis                          | Check the life of the post and the base under repeated wind loading [^3]                                                |
| 08  | Parametric and topology optimization      | Find the lowest mass that still gives a safe FoS                                                                        |
| 09  | Foundation or soil support analysis       | Replace the fixed support with an elastic support or a bolted base plate                                                |

## Future Improvements

- Apply a realistic wind load that follows a design code, such as the AASHTO specification for structural supports for highway signs [^3][^4], instead of the horizontal gravity load.
- Run the analyses listed above, starting with the mesh convergence study and a hand-calculation check, to verify the results.
- Use a systematic optimization method, such as a parametric study or topology optimization in ANSYS, to reduce the mass while keeping a target FoS and a limit on the top deflection.
- Change the post from a solid section to a hollow tube or a section with a larger width in the direction of the load, which gives more bending strength for less mass.
- Add stiffening features at the base, such as gussets, ribs or a larger fillet, to lower the stress where the post meets the base plate.
- Model the base plate, anchor bolts and foundation, and use contact and a bolt pre-load to replace the fixed support.
- Choose a real material grade and add corrosion protection, such as galvanizing.
- Consider a passively safe or breakaway design, which is used for posts close to roads [^2].
- Prepare detailed manufacturing drawings, a bill of materials and a cost estimate.

## References

[^1]: [Structural design of signposts and billboards](https://structville.com/2020/08/structural-design-of-signposts-and-billboards.html)

[^2]: [Types of sign posts available in the UK](https://signtradesupplies.co.uk/blogs/news/choosing-the-right-sign-posts-a-quick-guide-for-uk-signage-projects)

[^3]: [Development and Calibration of AASHTO LRFD Specifications for Structural Supports for Highway Signs, Luminaires, and Traffic Signals (NCHRP Report 796)](https://nap.nationalacademies.org/catalog/22240/development-and-calibration-of-aashto-lrfd-specifications-for-structural-supports-for-highway-signs-luminaires-and-traffic-signals)

[^4]: [Wind Drag Coefficients for Highway Signs and Support Structures (NCHRP Research Report 1012)](https://trb.org/Main/Blurbs/182921.aspx)

[^5]: [Stress Concentration or Singularity, Jefferson Lab](https://www.jlab.org/sites/default/files/physics/ansys/Stress%20Concentration%20or%20Singularity.pdf)

[^6]: [ANSYS Innovation Space Forum: Stress singularity at a fixed support](https://innovationspace.ansys.com/forum/?p=238045)
