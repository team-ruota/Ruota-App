import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/catering_inquiry.dart';
import '../providers/catering_inquiry_provider.dart';

class CateringInquiryListPage extends StatefulWidget {
  const CateringInquiryListPage({super.key});

  @override
  State<CateringInquiryListPage> createState() => _CateringInquiryListPageState();
}

class _CateringInquiryListPageState extends State<CateringInquiryListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CateringInquiryProvider>().fetchInquiries();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('케이터링 문의 목록'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<CateringInquiryProvider>().refreshInquiries();
            },
          ),
        ],
      ),
      body: Consumer<CateringInquiryProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    '오류가 발생했습니다',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      provider.errorMessage ?? '알 수 없는 오류',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => provider.refreshInquiries(),
                    child: const Text('다시 시도'),
                  ),
                ],
              ),
            );
          }

          if (provider.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inbox, size: 48, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('문의 내역이 없습니다'),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () => provider.refreshInquiries(),
            child: ListView.builder(
              itemCount: provider.inquiries.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                final inquiry = provider.inquiries[index];
                return _InquiryCard(
                  inquiry: inquiry,
                  onTap: () {
                    provider.selectInquiry(inquiry);
                    _showDetail(context, inquiry);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  void _showDetail(BuildContext context, CateringInquiry inquiry) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => Consumer<CateringInquiryProvider>(
          builder: (context, provider, child) => _InquiryDetailSheet(
            inquiry: provider.selectedInquiry ?? inquiry,
            scrollController: scrollController,
          ),
        ),
      ),
    );
  }
}

class _InquiryCard extends StatelessWidget {
  final CateringInquiry inquiry;
  final VoidCallback onTap;

  const _InquiryCard({
    required this.inquiry,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade100,
                    child: Icon(Icons.local_cafe, color: Colors.brown.shade700),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          inquiry.celebrityName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          inquiry.eventDatetime,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.brown.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '세트 ${inquiry.menuSelection.menuSet}',
                      style: TextStyle(
                        color: Colors.brown.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 12),
              Row(
                children: [
                  _InfoChip(
                    icon: Icons.person,
                    label: inquiry.bookerInfo.name,
                  ),
                  const SizedBox(width: 12),
                  _InfoChip(
                    icon: Icons.coffee,
                    label: '${inquiry.menuSelection.cupCount}잔',
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.location_on, size: 14, color: Colors.grey.shade600),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      inquiry.eventLocation.fullAddress,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Colors.grey.shade600),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class _InquiryDetailSheet extends StatelessWidget {
  final CateringInquiry inquiry;
  final ScrollController scrollController;

  const _InquiryDetailSheet({
    required this.inquiry,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          width: 40,
          height: 4,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        Expanded(
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.all(20),
            children: [
              Text(
                inquiry.celebrityName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                inquiry.eventDatetime,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 24),
              _DetailSection(
                title: '예약자 정보',
                icon: Icons.person,
                children: [
                  _DetailRow(label: '이름', value: inquiry.bookerInfo.name),
                  _DetailRow(label: '연락처', value: inquiry.bookerInfo.phoneNumber),
                  if (inquiry.bookerInfo.organization != null)
                    _DetailRow(label: '소속', value: inquiry.bookerInfo.organization!),
                ],
              ),
              const SizedBox(height: 16),
              _DetailSection(
                title: '이벤트 장소',
                icon: Icons.location_on,
                children: [
                  _DetailRow(label: '주소', value: inquiry.eventLocation.address),
                  _DetailRow(label: '상세주소', value: inquiry.eventLocation.detailedAddress),
                  if (inquiry.eventLocation.sido != null)
                    _DetailRow(label: '지역', value: '${inquiry.eventLocation.sido} ${inquiry.eventLocation.sigungu ?? ''}'),
                ],
              ),
              const SizedBox(height: 16),
              _DetailSection(
                title: '메뉴 선택',
                icon: Icons.restaurant_menu,
                children: [
                  _DetailRow(label: '세트', value: '세트 ${inquiry.menuSelection.menuSet}'),
                  _DetailRow(label: '수량', value: '${inquiry.menuSelection.cupCount}잔'),
                  if (inquiry.desserts.isNotEmpty)
                    _DetailRow(label: '디저트', value: inquiry.dessertsDisplay),
                ],
              ),
              const SizedBox(height: 16),
              _DetailSection(
                title: '추가 정보',
                icon: Icons.info,
                children: [
                  _DetailRow(label: '전기 지원', value: inquiry.electricPowerSupportLabel),
                  _DetailRow(label: '유입 경로', value: inquiry.referralSourceLabel),
                  if (inquiry.additionalRequests != null && inquiry.additionalRequests!.isNotEmpty)
                    _DetailRow(label: '요청사항', value: inquiry.additionalRequests!),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _DetailSection({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: Colors.brown),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
