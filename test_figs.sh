# wget https://raw.github.com/lehmannro/assert.sh/v1.1/assert.sh

. assert.sh -v

assert_raises "jcr -r figs/first_example.jcr figs/first_example.json" 0
assert_raises "jcr -r figs/first_example2.jcr figs/first_example.json" 0
assert_raises "jcr -r figs/second_example.jcr figs/second_example.json" 0
assert_raises "jcr -r figs/second_example2.jcr figs/second_example.json" 0
assert_raises "jcr -r figs/second_example2.jcr -o figs/second_example_override.jcr figs/second_example2.json" 0
assert_raises "jcr -r figs/rfc4627_example.jcr figs/rfc4627_example.json" 0
assert_raises "jcr -r figs/rfc4627_example2.jcr figs/rfc4627_example.json" 0
assert_raises "jcr --test-jcr -r figs/assignment_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/annotation_example.jcr" 0
assert_raises "jcr -r figs/rule_name_ruleset_id.jcr figs/first_example.json" 1
assert_raises "jcr --test-jcr -r figs/primitives_overview.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_boolean_and_null.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_integer_and_float.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_float_range.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_bit_integers.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_strings.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_uris.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_misc.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_binary.jcr" 0
assert_raises "jcr --test-jcr -r figs/member_specifications.jcr" 0
assert_raises "jcr --test-jcr -r figs/object_example.jcr" 0
assert_raises "jcr -r figs/object_example.jcr figs/object_example1.json" 0
assert_raises "jcr -r figs/object_example.jcr figs/object_example2.json" 0
assert_raises "jcr -S "o1" -r figs/object_order_eval.jcr figs/object_order_eval.json" 3
assert_raises "jcr -S "o2" -r figs/object_order_eval.jcr figs/object_order_eval.json" 0
assert_raises "jcr --test-jcr -r figs/array_example.jcr" 0
assert_raises "jcr -S "a1" -r figs/array_order_eval.jcr figs/array_order_eval.json" 3
assert_raises "jcr -S "a2" -r figs/array_order_eval.jcr figs/array_order_eval.json" 0
assert_raises "jcr -S "a2" -r figs/array_order_eval.jcr figs/array_order_eval2.json" 3
assert_raises "jcr -S "a1" -r figs/array_unordered_eval.jcr figs/array_order_eval.json" 3
assert_raises "jcr -S "a2" -r figs/array_unordered_eval.jcr figs/array_order_eval.json" 0
assert_raises "jcr --test-jcr -r figs/group_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/and_or_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/mixed_and_or_bad.jcr" 1
assert_raises "jcr --test-jcr -r figs/mixed_and_or_good.jcr" 0
assert_raises "jcr --test-jcr -r figs/repetition_min_max.jcr" 0
assert_raises "jcr --test-jcr -r figs/repetition_kleene.jcr" 0
assert_raises "jcr --test-jcr -r figs/repetition_step.jcr" 0
assert_raises "jcr -S "not_two" -r figs/not_annotation.jcr figs/not_annotation1.json" 0
assert_raises "jcr -S "not_two" -r figs/not_annotation.jcr figs/not_annotation2.json" 3
assert_raises "jcr -S "status" -r figs/not_annotation.jcr figs/not_annotation3.json" 0
assert_raises "jcr -S "status" -r figs/not_annotation.jcr figs/not_annotation4.json" 3
assert_raises "jcr --test-jcr -r figs/single_line_directive_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/multi_line_directive_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/jcr_version_current.jcr" 0
assert_raises "jcr --test-jcr -r figs/ruleset_id.jcr" 0
assert_raises "jcr -r figs/any_member.jcr figs/any_member1.json" 0
assert_raises "jcr -r figs/any_member.jcr figs/any_member2.json" 0
assert_raises "jcr -r figs/any_member_any_type.jcr figs/any_member1.json" 0
assert_raises "jcr -r figs/any_member_any_type.jcr figs/any_member2.json" 0
assert_raises "jcr -r figs/any_member_any_type.jcr figs/any_member_any_type2.json" 0
assert_raises "jcr -r figs/restrict_objects.jcr figs/restrict_objects1.json" 0
assert_raises "jcr -r figs/restrict_objects.jcr figs/restrict_objects2.json" 3
assert_raises "jcr -S "a3" -r figs/unrestricted_arrays.jcr figs/array_order_eval2.json" 0
assert_raises "jcr --test-jcr -r figs/ordered_array_with_optional_field.jcr" 0
assert_raises "jcr -r figs/ordered_array_with_optional_field.jcr figs/ordered_array_with_optional_field.json" 0
assert_raises "jcr --test-jcr -r figs/complex_order_array.jcr" 0
assert_raises "jcr -r figs/complex_order_array.jcr figs/complex_order_array.json" 0
assert_raises "jcr --test-jcr -r figs/lists_of_values.jcr" 0
assert_raises "jcr --test-jcr -r figs/groups_in_arrays.jcr" 0
assert_raises "jcr --test-jcr -r figs/groups_in_arrays2.jcr" 0
assert_raises "jcr --test-jcr -r figs/groups_in_objects.jcr" 0
assert_raises "jcr -r figs/groups_in_objects_ignored1.jcr figs/groups_in_objects_ignored.json" 0
assert_raises "jcr -r figs/groups_in_objects_ignored2.jcr figs/groups_in_objects_ignored.json" 3
assert_raises "jcr -r figs/groups_in_objects_ignored3.jcr figs/groups_in_objects_ignored.json" 3
assert_raises "jcr --test-jcr -r figs/macro.jcr" 0
assert_raises "jcr --test-jcr -r figs/object_mixin.jcr" 0
assert_raises "jcr --test-jcr -r figs/subordinate_dependents.jcr" 0
assert_raises "jcr -S "statuses" -r figs/override1.jcr figs/override1.json" 0
assert_raises "jcr -S "statuses" -r figs/override2.jcr figs/override1.json" 0
assert_raises "jcr -S "statuses" -r figs/override3.jcr figs/override2.json" 3
assert_raises "jcr -S "statuses" -r figs/override3.jcr figs/override1.json" 0

assert_raises "jcr --test-jcr -r figs/assignment_legacy_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_null.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_boolean.jcr" 0
assert_raises "jcr --test-jcr -r figs/annotations-range-exclusive.jcr" 0
assert_raises "jcr --test-jcr -r figs/subordinate_dependents_equiv.jcr" 0

assert_raises "jcr --test-jcr -r figs/root_annotations.jcr" 0
assert_raises "jcr --test-jcr -r figs/group_example_for_validation.jcr" 0
assert_raises "jcr --test-jcr -r figs/type_choice.jcr" 0
assert_raises "jcr --test-jcr -r figs/type_choice2.jcr" 0
assert_raises "jcr --test-jcr -r figs/thrid_example2.jcr" 0

assert_end figs

