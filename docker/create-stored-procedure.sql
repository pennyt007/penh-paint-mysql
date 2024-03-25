DELIMITER $$
CREATE PROCEDURE `sp_processApprovedPointsOfProgress`()
BEGIN

INSERT INTO d_ls_point_of_progress_details
SELECT  popd.point_of_progress_detail_id,
  popd.point_of_progress_summary_id,
  pops.point_of_progress_id,
  ls.learning_standard_id,
  cp.curriculum_proficiency_id,
  concat (gl.code, ' - ', YEAR(cl.started)) as grade_level_with_year,
  gl.code as grade_level_code,
  la.code as learning_area_code,
  rp.title as reporting_period_title,
  rp.started as reporting_period_started,
  rp.ended as reporting_period_ended,
  c.short_description as curriculum_short_desc,
  lse.description as learning_standard_element,
  lsc.description as learning_standard_category,
  pl.level as proficiency_level,
  rubricp.score,
  pops.feedback,
  pops.next_steps,
  CONCAT (staff.first_name, ' ', LEFT(staff.middle_name,1),".", ' ', staff.last_name) as staff
  FROM point_of_progress_details popd
  JOIN point_of_progress_summaries pops USING (point_of_progress_summary_id)
  JOIN learning_areas la USING (learning_area_id)
  JOIN point_of_progress pop USING (point_of_progress_id)
  JOIN reporting_periods rp USING (reporting_period_id)
  JOIN class_students cstud USING (class_student_id)
  JOIN classes cl USING (class_id)
  JOIN class_staff cs USING (class_id)
  JOIN school_staff ss USING (school_staff_id)
  JOIN staff staff USING (staff_id)
  JOIN courses crs USING (course_id)
  JOIN grade_levels gl USING (grade_level_id)
  JOIN enrollments e USING (enrollment_id)
  JOIN students s USING (student_id)
  JOIN curriculum_proficiencies cp USING (curriculum_proficiency_id)
  JOIN curriculum c USING (curriculum_id)
  JOIN learning_standards ls USING (curriculum_id)
  JOIN learning_standard_categories lsc USING (learning_standard_category_id)
  JOIN learning_standard_elements lse USING (learning_standard_element_id)
  JOIN rubric_proficiencies rubricp USING (rubric_proficiency_id)
  JOIN proficiency_levels pl USING (proficiency_level_id)
  WHERE pop.point_of_progress_state_type_id = 30
  AND lse.learning_standard_element_id in (20,30) and proficiency_level_id != 10
  ORDER BY rp.started DESC, la.code ASC, lse.description DESC, c.short_description ASC, rubricp.score ASC;
    
INSERT INTO d_cc_point_of_progress_details
SELECT popd.point_of_progress_detail_id,
pops.point_of_progress_summary_id,
pops.point_of_progress_id,
scp.sub_competency_profile_id,
popd.curriculum_proficiency_id,
concat (gl.code, ' - ', YEAR(cl.started)) as grade_level_with_year,
gl.code as grade_level_code,
la.code as learning_area_code,
rp.title as reporting_period_title,
rp.started as reporting_period_started,
rp.ended as reporting_period_ended,
c.short_description as curriculum_short_desc,
sc.short_description as sub_competency_short_desc,
cc.short_description as competency_short_desc,
pl.level as proficiency_level,
rubricp.score,
pops.feedback,
pops.next_steps,
CONCAT (staff.first_name, ' ', LEFT(staff.middle_name,1),".", ' ', staff.last_name) as staff,
scp.order as profile_order
FROM point_of_progress_details popd
JOIN point_of_progress_summaries pops USING (point_of_progress_summary_id)
JOIN learning_areas la USING (learning_area_id)
JOIN point_of_progress pop USING (point_of_progress_id)
JOIN reporting_periods rp USING (reporting_period_id)
JOIN class_students USING (class_student_id)
JOIN classes cl USING (class_id)
JOIN class_staff cs USING (class_id)
JOIN school_staff ss USING (school_staff_id)
JOIN staff staff USING (staff_id)
JOIN courses crs USING (course_id)
JOIN grade_levels gl USING (grade_level_id)
JOIN enrollments e USING (enrollment_id)
JOIN students s USING (student_id)
JOIN curriculum_proficiencies cp USING (curriculum_proficiency_id)
JOIN curriculum c USING (curriculum_id)
JOIN sub_competency_profiles scp USING (curriculum_id)
JOIN sub_competencies sc USING (sub_competency_id)
JOIN core_competencies cc USING (core_competency_id)
JOIN rubric_proficiencies rubricp USING (rubric_proficiency_id)
JOIN proficiency_levels pl USING (proficiency_level_id)
WHERE pop.point_of_progress_state_type_id = 30
AND proficiency_level_id != 100
ORDER BY reporting_period_started DESC, learning_area_code ASC, competency_short_desc ASC,
sub_competency_short_desc ASC, rubricp.score ASC;

INSERT INTO point_of_progress_states (point_of_progress_id, point_of_progress_state_type_id, user_id, occurred)
(SELECT pop.point_of_progress_id, 40, 5, curdate()
  FROM point_of_progress pop 
  WHERE pop.point_of_progress_state_type_id = 30);
 
UPDATE point_of_progress set point_of_progress_state_type_id = 40 where point_of_progress_state_type_id = 30;
  
END$$
DELIMITER ;