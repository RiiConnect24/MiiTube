meta:
  id: miitube
  file-extension: dat
  application: Miitopia
  endian: le
seq:
  - id: sc00_id
    type: str
    size: 4
    contents: "SC00"
  - id: unk1
    type: u2
    doc: Always 0?
  - id: unk2
    type: u2
    doc: Always 512?
  - id: en00_entry_number
    type: u4
    doc: Always 3?
  - id: rn00_entry_number
    type: u4
    doc: Always 15?
  - id: filesize
    type: u8
  - id: en00_table
    repeat: expr
    repeat-expr: en00_entry_number
    type: en00
  - id: rn00_table
    repeat: expr
    repeat-expr: rn00_entry_number
    type: rn00
types:
  en00:
    - id: en00_id
      type: str
      size: 4
      contents: "EN00"
    - id: en00_number
      type: u4
      doc: Goes up one time for each entry.
    - id: mi00_offset
      type: u4
    - id: mi00_entry_number
      type: u4
    - id: mi00_table
      repeat: expr
      repeat-expr: mi00_entry_number
      pos: mi00_offset
      type: mi00
  rn00:
    - id: rn00_id
      type: str
      size: 4
      contents: "RN00"
    - id: rn00_number
      type: u4
      doc: Goes up one time for each entry.
    - id: mi00_offset
      type: u4
    - id: mi00_entry_number
      type: u4
    - id: mi00_table
      repeat: expr
      repeat-expr: mi00_entry_number
      pos: mi00_offset
      type: mi00
  mi00:
    - id: mi00_id
      type: str
      size: 4
      contents: "MI00"
    - id: unk1
      type: u4
    - id: unk2
      type: u4
    - id: unk3
      type: u4
      doc: Always 0?
    - id: mii_offset
      type: u4
    - id: mii_size
      type: u4
    - id: mii
      size: mii_size
      pos: mii_offset
