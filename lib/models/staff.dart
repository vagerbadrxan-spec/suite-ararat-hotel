class StaffMember {
  final String id;
  final String? imageUrl;

  const StaffMember({required this.id, this.imageUrl});
}

const defaultStaff = <StaffMember>[
  StaffMember(id: 'staff1'),
  StaffMember(id: 'staff2'),
  StaffMember(id: 'staff3'),
  StaffMember(id: 'staff4'),
  StaffMember(id: 'staff5'),
];
