meta:
  id: lxexe
  title: LX_executable
  endian: le
  file-extension:
    - exe
    - vxd
  license: CC0-1.0
doc: |
  The LX/LE executable file format is used by OS/2, the DOS/4G DOS extender and Windows VxD drivers.
seq:
  - id: mz1
    type: mz_placeholder
  - id: mz2
    size: mz1.header_size - 0x40
  - id: lx_signature
    contents: ["LE", 0, 0]
  - id: lx_hdr
    type: lx_header
types:
  mz_placeholder:
    seq:
      - id: magic
        contents: "MZ"
      - id: data1
        size: 0x3a
      - id: header_size
        type: u4
  lx_pre_header:
    seq:
      - id: magic
        size: 2
      - id: byte_order
        type: u1
      - id: word_order
        type: u1
  lx_header:
    seq:
      - id: format_level
        type: u4
      - id: cpu_type
        type: u2
      - id: os_type
        type: u2
      - id: module_version
        type: u4
      - id: module_flags
        type: u4
      - id: module_num_pages
        type: u4
      - id: eip_object_num 
        type: u4
      - id: eip
        type: u4
      - id: esp_object_num
        type: u4
      - id: esp
        type: u4
      - id: page_size
        type: u4
      - id: last_page_size
        type: u4
      - id: fixup_section_size
        type: u4
      - id: fixup_section_checksum
        type: u4
      - id: loader_section_size
        type: u4
      - id: loader_section_checksum
        type: u4
      - id: object_table_offset
        type: u4
      - id: num_objects_in_module
        type: u4
      - id: object_page_table_offset
        type: u4
      - id: object_iter_pages_offset
        type: u4
      - id: resource_table_offset
        type: u4
      - id: num_resource_table_entries
        type: u4
      - id: resident_name_tbl_offset
        type: u4
      - id: entry_tbl_offset
        type: u4
      - id: module_directives_offset
        type: u4
      - id: num_module_directives
        type: u4
      - id: fixup_page_table_offset
        type: u4
      - id: fixup_record_table_offset
        type: u4
      - id: import_module_tbl_offset
        type: u4
      - id: num_import_mod_entries
        type: u4
      - id: import_proc_tbl_offset
        type: u4
      - id: per_page_checksum_offset
        type: u4
      - id: data_pages_offset
        type: u4
      - id: num_preload_pages
        type: u4
      - id: non_res_name_tbl_offset
        type: u4
      - id: non_res_name_tbl_length
        type: u4
      - id: non_res_name_tbl_checksum
        type: u4
      - id: auto_ds_object_num
        type: u4
      - id: debug_info_offset
        type: u4
      - id: debug_info_length
        type: u4
      - id: num_instance_preload 
        type: u4
      - id: num_instance_demand
        type: u4
      - id: heapsize
        type: u4
