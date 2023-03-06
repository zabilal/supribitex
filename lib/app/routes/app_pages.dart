import 'package:get/get.dart';
import 'package:supribitex/app/modules/airtime_topup/controllers/airtime_topup_controller.dart';

import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/activities_log/bindings/activities_log_binding.dart';
import '../modules/activities_log/views/activities_log_view.dart';
import '../modules/airtime_swap/bindings/airtime_swap_binding.dart';
import '../modules/airtime_swap/views/airtime_swap_view.dart';
import '../modules/airtime_topup/bindings/airtime_topup_binding.dart';
import '../modules/airtime_topup/views/airtime_topup_view.dart';
import '../modules/buy_gifcard/bindings/buy_gifcard_binding.dart';
import '../modules/buy_gifcard/views/buy_gifcard_view.dart';
import '../modules/cable_history/bindings/cable_history_binding.dart';
import '../modules/cable_history/views/cable_history_view.dart';
import '../modules/cable_subscription/bindings/cable_subscription_binding.dart';
import '../modules/cable_subscription/views/cable_subscription_view.dart';
import '../modules/convert_bonus/bindings/convert_bonus_binding.dart';
import '../modules/convert_bonus/views/convert_bonus_view.dart';
import '../modules/data_history/bindings/data_history_binding.dart';
import '../modules/data_history/views/data_history_view.dart';
import '../modules/deposit_log/bindings/deposit_log_binding.dart';
import '../modules/deposit_log/views/deposit_log_view.dart';
import '../modules/deposit_naira/bindings/deposit_naira_binding.dart';
import '../modules/deposit_naira/views/deposit_naira_view.dart';
import '../modules/electricity_bill/bindings/electricity_bill_binding.dart';
import '../modules/electricity_bill/views/electricity_bill_view.dart';
import '../modules/electricity_history/bindings/electricity_history_binding.dart';
import '../modules/electricity_history/views/electricity_history_view.dart';
import '../modules/exchange_log/bindings/exchange_log_binding.dart';
import '../modules/exchange_log/views/exchange_log_view.dart';
import '../modules/faq/bindings/faq_binding.dart';
import '../modules/faq/views/faq_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/internet_data/bindings/internet_data_binding.dart';
import '../modules/internet_data/views/internet_data_view.dart';
import '../modules/message_inbox/bindings/message_inbox_binding.dart';
import '../modules/message_inbox/views/message_inbox_view.dart';
import '../modules/my_account/bindings/my_account_binding.dart';
import '../modules/my_account/views/my_account_view.dart';
import '../modules/new_request/bindings/new_request_binding.dart';
import '../modules/new_request/views/new_request_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/recharge_history/bindings/recharge_history_binding.dart';
import '../modules/recharge_history/views/recharge_history_view.dart';
import '../modules/referal_system/bindings/referal_system_binding.dart';
import '../modules/referal_system/views/referal_system_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/sell_gifcard/bindings/sell_gifcard_binding.dart';
import '../modules/sell_gifcard/views/sell_gifcard_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/support_ticket/bindings/support_ticket_binding.dart';
import '../modules/support_ticket/views/support_ticket_view.dart';
import '../modules/swap_history/bindings/swap_history_binding.dart';
import '../modules/swap_history/views/swap_history_view.dart';
import '../modules/transfer_fund/bindings/transfer_fund_binding.dart';
import '../modules/transfer_fund/views/transfer_fund_view.dart';
import '../modules/transfer_log/bindings/transfer_log_binding.dart';
import '../modules/transfer_log/views/transfer_log_view.dart';
import '../modules/withdrwal_log/bindings/withdrwal_log_binding.dart';
import '../modules/withdrwal_log/views/withdrwal_log_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DEPOSIT_NAIRA,
      page: () => const DepositNairaView(),
      binding: DepositNairaBinding(),
    ),
    GetPage(
      name: _Paths.DEPOSIT_LOG,
      page: () => const DepositLogView(),
      binding: DepositLogBinding(),
    ),
    GetPage(
      name: _Paths.BUY_GIFCARD,
      page: () => const BuyGifcardView(),
      binding: BuyGifcardBinding(),
    ),
    GetPage(
      name: _Paths.SELL_GIFCARD,
      page: () => const SellGifcardView(),
      binding: SellGifcardBinding(),
    ),
    GetPage(
      name: _Paths.EXCHANGE_LOG,
      page: () => const ExchangeLogView(),
      binding: ExchangeLogBinding(),
    ),
    GetPage(
      name: _Paths.NEW_REQUEST,
      page: () => const NewRequestView(),
      binding: NewRequestBinding(),
    ),
    GetPage(
      name: _Paths.WITHDRWAL_LOG,
      page: () => const WithdrwalLogView(),
      binding: WithdrwalLogBinding(),
    ),
    GetPage(
      name: _Paths.CONVERT_BONUS,
      page: () => const ConvertBonusView(),
      binding: ConvertBonusBinding(),
    ),
    GetPage(
      name: _Paths.TRANSFER_FUND,
      page: () => const TransferFundView(),
      binding: TransferFundBinding(),
    ),
    GetPage(
      name: _Paths.TRANSFER_LOG,
      page: () => const TransferLogView(),
      binding: TransferLogBinding(),
    ),
    GetPage(
      name: _Paths.AIRTIME_TOPUP,
      page: () => AirtimeTopupView(),
      binding: AirtimeTopupBinding(),
    ),
    GetPage(
      name: _Paths.INTERNET_DATA,
      page: () => const InternetDataView(),
      binding: InternetDataBinding(),
    ),
    GetPage(
      name: _Paths.ELECTRICITY_BILL,
      page: () => const ElectricityBillView(),
      binding: ElectricityBillBinding(),
    ),
    GetPage(
      name: _Paths.CABLE_SUBSCRIPTION,
      page: () => const CableSubscriptionView(),
      binding: CableSubscriptionBinding(),
    ),
    GetPage(
      name: _Paths.AIRTIME_SWAP,
      page: () => const AirtimeSwapView(),
      binding: AirtimeSwapBinding(),
    ),
    GetPage(
      name: _Paths.CABLE_HISTORY,
      page: () => const CableHistoryView(),
      binding: CableHistoryBinding(),
    ),
    GetPage(
      name: _Paths.ELECTRICITY_HISTORY,
      page: () => const ElectricityHistoryView(),
      binding: ElectricityHistoryBinding(),
    ),
    GetPage(
      name: _Paths.RECHARGE_HISTORY,
      page: () => const RechargeHistoryView(),
      binding: RechargeHistoryBinding(),
    ),
    GetPage(
      name: _Paths.DATA_HISTORY,
      page: () => const DataHistoryView(),
      binding: DataHistoryBinding(),
    ),
    GetPage(
      name: _Paths.SWAP_HISTORY,
      page: () => const SwapHistoryView(),
      binding: SwapHistoryBinding(),
    ),
    GetPage(
      name: _Paths.MY_ACCOUNT,
      page: () => const MyAccountView(),
      binding: MyAccountBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.REFERAL_SYSTEM,
      page: () => const ReferalSystemView(),
      binding: ReferalSystemBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITIES_LOG,
      page: () => const ActivitiesLogView(),
      binding: ActivitiesLogBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE_INBOX,
      page: () => const MessageInboxView(),
      binding: MessageInboxBinding(),
    ),
    GetPage(
      name: _Paths.SUPPORT_TICKET,
      page: () => const SupportTicketView(),
      binding: SupportTicketBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => const FaqView(),
      binding: FaqBinding(),
    ),
  ];
}
