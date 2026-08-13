part of '../home_screen.dart';

class DatesHeader extends StatelessWidget {
  final List<String> dates;
  final String? selectedDate;
  final ValueChanged<String> onDateSelected;

  const DatesHeader({
    super.key,
    required this.dates,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: dates.asMap().entries.map((entry) {
            final index = entry.key;
            final date = entry.value;
            final isSelected = selectedDate == date;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _DateChip(
                date: date,
                dayNumber: index + 1,
                isSelected: isSelected,
                onTap: () => onDateSelected(date),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _DateChip extends StatelessWidget {
  final String date;
  final int dayNumber;
  final bool isSelected;
  final VoidCallback onTap;

  const _DateChip({
    required this.date,
    required this.dayNumber,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected
              ? ThemeColors.primary
              : Theme.of(context).colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected ? Colors.transparent : ThemeColors.primary,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'DAY $dayNumber',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: isSelected ? Colors.white : Colors.grey[600],
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              formatDayMonth(date),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
