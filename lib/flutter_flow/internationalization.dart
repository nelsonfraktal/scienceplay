import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Welcome
  {
    'w9wpjrk9': {
      'en': 'Welcome to Science Play App',
      'pt': 'Bem-vindo ao aplicativo Science Play',
    },
    '9czm1psn': {
      'en':
          'The Audiobook and Audiopaper App for Medical Doctors and Healthcare Professionals',
      'pt':
          'O aplicativo Audiobook e Audiopaper para médicos e profissionais de saúde',
    },
    '5jyj714c': {
      'en': 'Sign up',
      'pt': 'Cadastrar',
    },
    '18qflayv': {
      'en': 'Login',
      'pt': 'Entrar',
    },
    'wpwactfu': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Signup
  {
    '660t1k7n': {
      'en': 'Create an account and let’s go learn together',
      'pt': 'Crie uma conta e vamos aprender juntos',
    },
    'h0pjsawg': {
      'en': 'Full name',
      'pt': 'Nome completo',
    },
    'gswwbaxu': {
      'en': 'Nickname',
      'pt': 'Apelido',
    },
    '4ythqv67': {
      'en': 'Country/Region',
      'pt': 'País/Região',
    },
    'mi3ex0zz': {
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    '4ymnogpw': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '439nk8oj': {
      'en': 'Confirm your password',
      'pt': 'Confirme sua senha',
    },
    'e3qg02s1': {
      'en': 'Create account',
      'pt': 'Criar uma conta',
    },
    'n8u9gj5x': {
      'en': 'Alread have an account?',
      'pt': 'Já tem uma conta?',
    },
    'rzuvh8c8': {
      'en': 'Log in',
      'pt': 'Entrar',
    },
    '28gnqh1z': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    'jofn0iof': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção',
    },
    'shgx3ffn': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    'um7bf91q': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção',
    },
    'qo1t8u9l': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    'as3f4owr': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'm7q72kin': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    'johrjk46': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'sdrwrj5l': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    '6xk17hhd': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'xx4tyorh': {
      'en': 'or',
      'pt': 'ou',
    },
    '3j0defze': {
      'en': 'Continue with Google',
      'pt': 'Continuar com o Google',
    },
    '8an3c2e5': {
      'en': 'Continue with Facebook',
      'pt': 'Continuar com o Facebook',
    },
    'w2l3icot': {
      'en': 'Continue with Apple',
      'pt': 'Continuar com a Apple',
    },
    'ech06uva': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Login
  {
    'hk36gr3n': {
      'en': 'Welcome back',
      'pt': 'Boas-vindas de volta',
    },
    'x58nk8d1': {
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    'y0r7wbsk': {
      'en': 'Password',
      'pt': 'Senha',
    },
    't8h25zgt': {
      'en': 'Forgot your password?',
      'pt': 'Esqueceu sua senha?',
    },
    'whj23zu7': {
      'en': 'Log in',
      'pt': 'Entrar',
    },
    'yv2rmmb7': {
      'en': 'Don’t have an account?',
      'pt': 'Não tem uma conta?',
    },
    'y9tsbkqu': {
      'en': 'Sign up',
      'pt': 'Cadastre-se',
    },
    '7xec0e64': {
      'en': 'or',
      'pt': 'ou',
    },
    'u21xwuzt': {
      'en': 'Continue with Google',
      'pt': 'Continuar com o Google',
    },
    'h7q0ga7d': {
      'en': 'Continue with Facebook',
      'pt': 'Continuar com o Facebook',
    },
    'iu4me5lk': {
      'en': 'Continue with Apple',
      'pt': 'Continuar com a Apple',
    },
    'qz8sds0q': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Resetting-password
  {
    'fvvm8715': {
      'en': 'Reset your password',
      'pt': 'Redefinir sua senha',
    },
    'zt2l1qu4': {
      'en':
          'Enter your email adress, and we’ll send you a link to change your password',
      'pt':
          'Digite seu endereço de e-mail e enviaremos um link para alterar sua senha',
    },
    'hjba0s8x': {
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    'v3q0p67c': {
      'en': 'Submit',
      'pt': 'Enviar',
    },
    '02d4y1oo': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Resetting-password2
  {
    'p1qwwzc8': {
      'en': 'Reset your password',
      'pt': 'Redefinir sua senha',
    },
    '6ihnr66h': {
      'en': 'Back to login',
      'pt': 'Voltar ao login',
    },
    'xt0vbpqt': {
      'en': 'Resend link',
      'pt': 'Reenviar link',
    },
    'he0egzlr': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Resetting-password3
  {
    '2ow14zi0': {
      'en': 'Reset your password',
      'pt': 'Redefinir sua senha',
    },
    'ft1yr0m0': {
      'en': 'Create a new password ',
      'pt': 'Criar uma nova senha',
    },
    'k78rdog8': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'feupueoo': {
      'en': 'Confirm your password',
      'pt': 'Confirme sua senha',
    },
    'myh1ww5n': {
      'en': 'Reset password',
      'pt': 'Redefinir senha',
    },
    '5d7aneff': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_finish
  {
    'jtl2p8gr': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Tracks
  {
    'o2wy10wc': {
      'en': 'Tracks',
      'pt': 'Playlists',
    },
    '5jde0w0v': {
      'en': 'Spend 15 minutes learning',
      'pt': 'Passe 15 minutos aprendendo',
    },
    'ut2zhlrg': {
      'en': '100 XP',
      'pt': '100 XP',
    },
    '1hrn65kx': {
      'en': 'Failed to load your progress',
      'pt': 'Falha ao carregar seu progresso',
    },
    'sb9x70hq': {
      'en': 'My tracks',
      'pt': 'Minhas playlists',
    },
    'k0i9mslj': {
      'en': 'Tracks followed by me',
      'pt': 'Playlists seguidas por mim',
    },
    'k95rh5to': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    '3dvw8hje': {
      'en': 'Recommended tracks',
      'pt': 'Playlists recomendadas',
    },
    'g7n0h3q9': {
      'en': 'Based on your interests',
      'pt': 'Baseadas em seus interesses',
    },
    '6t11w33h': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    'qnlb3fp1': {
      'en': 'Purchased tracks',
      'pt': 'Playlists compradas',
    },
    '8nxf56s8': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    '7bkidyzz': {
      'en': 'Tracks',
      'pt': 'Playlists',
    },
  },
  // Personal_informations
  {
    'ht9u2jit': {
      'en': 'Personal Information',
      'pt': 'Informações pessoais',
    },
    'oxwdeb45': {
      'en': 'Edit photo',
      'pt': 'Editar foto',
    },
    'kmiove0r': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'x5j28530': {
      'en': 'Username',
      'pt': 'Apelido',
    },
    '4vw7o85a': {
      'en': 'The username is already in use',
      'pt': 'O nome de usuário já está em uso',
    },
    '30i3vj7c': {
      'en': 'Country/Region',
      'pt': 'País/Região',
    },
    'l4z1s9m1': {
      'en': 'E-mail',
      'pt': 'E-mail',
    },
    'cndyo5ac': {
      'en': 'Preferred language',
      'pt': 'Língua preferida',
    },
    '3ywlq7j7': {
      'en': 'Portuguese',
      'pt': 'Português',
    },
    'm1nawh2p': {
      'en': 'English',
      'pt': 'Inglês',
    },
    'cp6b9qbo': {
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'vbvwc430': {
      'en': 'Audio preferences',
      'pt': 'Preferências de áudio',
    },
    '57ub2k6a': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Content_preferences
  {
    'y0um1c8k': {
      'en': 'Content preferences',
      'pt': 'Preferências de conteúdo',
    },
    'cp4b3fhd': {
      'en': 'Occupation or interest',
      'pt': 'Ocupação ou interesse',
    },
    'eoelrz8x': {
      'en': 'Undefined',
      'pt': 'Indefinido',
    },
    'idyax0ju': {
      'en': 'Areas of interest',
      'pt': 'Áreas de interesse',
    },
    '7dk7qz37': {
      'en': 'Undefined',
      'pt': 'Indefinido',
    },
    '6obj5ymz': {
      'en': 'Level of knowledge',
      'pt': 'Nível de conhecimento',
    },
    'pvyyadln': {
      'en': 'Goals',
      'pt': 'Objetivos',
    },
    '61q0p9ep': {
      'en': 'Undefined',
      'pt': 'Indefinido',
    },
    '9wr103oh': {
      'en': 'Time available',
      'pt': 'Tempo disponível',
    },
    'a75l7skz': {
      'en': 'Prefered type of content',
      'pt': 'Tipo de conteúdo preferido',
    },
    'g1vq0vtq': {
      'en': 'Undefined',
      'pt': 'Indefinido',
    },
    'aeqfrif1': {
      'en': 'Reset all preferences',
      'pt': 'Redefinir todas as preferências',
    },
    'm0tbahpc': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Notifications
  {
    'ym33fazy': {
      'en': 'Content preferences',
      'pt': 'Preferências de conteúdo',
    },
    'qqiucqrz': {
      'en': 'E-mail notifications',
      'pt': 'Notificações por e-mail',
    },
    'mxky395v': {
      'en': 'New contents ',
      'pt': 'Novos conteúdos',
    },
    'hlnj6a3p': {
      'en': 'Content suggestions ',
      'pt': 'Sugestões de conteúdo',
    },
    '2cl9ppza': {
      'en': 'Publicities and promotions',
      'pt': 'Publicidades e promoções',
    },
    '5cbw9i75': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Security_preferences
  {
    '0evmcnhm': {
      'en': 'Security preferences',
      'pt': 'Preferências de segurança',
    },
    'a6ww8mh2': {
      'en': 'Change password',
      'pt': 'Alterar a senha',
    },
    '1eg4b22y': {
      'en': 'Delete account',
      'pt': 'Deletar conta',
    },
    'e7cf6syg': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Privacy_and_data
  {
    'chqlpa4g': {
      'en': 'Privacy and data',
      'pt': 'Privacidade e dados',
    },
    'vbhf49tc': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    'xjx04e1t': {
      'en':
          'Effective Date: July 10, 2024\n\n1. Introduction\n\nWelcome to Science Play Audiobook LTDA! We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about this privacy policy or our practices regarding your personal information, please contact us at contato@scienceplay.com.\n\nBy visiting our website www.scienceplay.app and using our services, you expressly declare that you have read, understood, and agree to this privacy policy. We take your privacy very seriously. This privacy policy describes how we collect, use, and share your information. We hope you take some time to read it carefully. If there are any terms in this privacy policy that you disagree with, please discontinue the use of our sites and services.\n\nThis privacy policy applies to all information collected through our website (such as www.scienceplay.app) and/or any related services, sales, marketing, or events (we refer to them collectively in this privacy policy as \"Services\").\n\n2. Information We Collect\n\nWe collect personal information that you provide to us. The personal information we collect depends on the context of your interactions with us and the Services, the choices you make, and the products and features you use. The personal information we collect can include the following:\n\n•\tName and Contact Data: We collect your first and last name, email address, postal address, phone number, and other similar contact data.\n\n•\tCredentials: We collect passwords, password hints, and similar security information for authentication and account access.\n\n•\tPayment Data: We collect data necessary to process your payment, such as your credit card number and the security code associated with your payment instrument.\n\n•\tSocial Media Login Data: We provide the option to register using social media account details, such as Facebook, Twitter, or other social media accounts. If you choose to register this way, we will collect the information described in the section \"How We Handle Your Social Logins\".\n\n•\tOther Necessary Data: In addition to the information mentioned, we may collect other data to provide our services and improve your experience, always with explicit consent when required.\n\n3. How We Use Your Information\n\nWe use personal information collected through our Services for various business purposes, as described below. We process your personal data in reliance on our legitimate business interests to enter into or perform a contract with you, with your consent, and/or for compliance with our legal obligations. We indicate the specific processing grounds we rely on next to each purpose listed below:\n\n•\tTo facilitate account creation and logon process.\n\n•\tTo send administrative information to you for business, legal, and/or possibly contractual reasons.\n\n•\tTo fulfill and manage your orders.\n\n•\tTo manage user accounts.\n\n• To send you marketing and promotional communications. We always give you the option to opt out of receiving these communications.\n\n•\tTo post testimonials with your consent.\n\n•\tTo deliver targeted advertising to you.\n\n•\tTo request feedback.\n\n•\tTo protect our Services.\n\n•\tTo enforce our terms, conditions, and policies for business purposes, to comply with legal and regulatory requirements, or in connection with our contract.\n\n•\tTo respond to legal requests and prevent harm.\n\n•\tTo manage user accounts.\n\n4. Sharing Your Information\n\nWe may process or share the data that we hold based on the following legal grounds:\n\n•\tConsent: We may process your data if you have permission to use your personal information for a particular purpose.\n\n•\tLegitimate Interests: We may process your data when reasonably necessary to achieve our legitimate business interests.\n\n•\tPerformance of a Contract: Where we have entered into a contract with you, we may process your personal information to fulfill the terms of our agreement.\n\n•\tLegal Obligations: We may disclose your information where we are legally required to do so to comply with applicable law, governmental requests, a judicial proceeding, court order, or legal process, such as in response to a court order or a subpoena (including in response to public authorities to meet national security or law enforcement requirements).\n\n•\tVital Interests: We may disclose your information where we believe it is necessary to investigate, prevent, or take action regarding potential violations of our policies, suspected fraud, situations involving potential threats to the safety of any person, and illegal activities, or as evidence in litigation in which we are involved.\n\n•\tThird-Party Sharing: We will not share your personal information with third parties for marketing purposes without your explicit consent. We share data only as necessary to fulfill our contractual and legal obligations.\n\n5. How We Keep Your Information Safe\n\nWe have implemented appropriate technical and organizational security measures designed to protect the security of any personal information we process. However, please also remember that we cannot guarantee that the internet itself is 100% secure. Although we will do our best to protect your personal information, transmission of personal information to and from our Services is at your own risk. The security of your information also depends on you. Please use strong passwords and keep your credentials secure. You should only access the services within a secure environment.\n\n6. Your Privacy Rights\n\nIn some regions (like the European Economic Area), you have certain rights under applicable data protection laws. These may include the right (i) to request access and obtain a copy of your personal information, (ii) to request rectification or erasure; (iii) to restrict the processing of your personal information; and (iv) if applicable, to data portability. In certain circumstances, you may also have the right to object to processing your personal information. To make such a request, please use the contact details provided below. We will consider and act upon any request following applicable data protection laws.\n\nIf we rely on your consent to process your personal information, you can withdraw your consent at any time. Please note, however, that this will not affect the lawfulness of the processing before its withdrawal, nor will it affect the processing of your personal information conducted in reliance on lawful processing grounds other than consent.\n\nTo exercise your privacy rights, please contact us at contato@scienceplay.com with your request.\n\n7. Controls for Do-Not-Track Features\n\nMost web browsers, mobile operating systems, and mobile applications include a Do-Not-Track (\"DNT\") feature or setting you can activate to signal your privacy preference and not to have data about your online browsing activities monitored and collected. No uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals.\n\n8. Updates to This Policy\n\nWe may update this privacy policy periodically to reflect changes in our practices or legal requirements. Any changes will be posted on our website and effective immediately upon posting.\n\n9. Contact\n\nIf you have questions or concerns about our privacy policy, please contact us at contato@scienceplay.com.',
      'pt':
          'Data de Vigência: 10 de julho de 2024\n\n1. Introdução\n\nBem-vindo à Science Play Audiobook LTDA! Estamos comprometidos em proteger suas informações pessoais e seu direito à privacidade. Se você tiver qualquer dúvida ou preocupação sobre esta política de privacidade ou nossas práticas com relação às suas informações pessoais, entre em contato conosco pelo email contato@scienceplay.com.\n\nAo visitar nosso site www.scienceplay.app e usar nossos serviços, você declara expressamente ter lido, entendido e concordado com esta política de privacidade. Levamos sua privacidade muito a sério. Nesta política de privacidade, descrevemos como coletamos, usamos e compartilhamos suas informações. Esperamos que você reserve um tempo para ler atentamente. Se houver algum termo nesta política de privacidade com o qual você não concorde, por favor, interrompa o uso de nossos sites e serviços.\n\nEsta política de privacidade aplica-se a todas as informações coletadas através de nosso site (como www.scienceplay.app) e/ou quaisquer serviços relacionados, vendas, marketing ou eventos (referimos-nos a eles coletivamente nesta política de privacidade como \"Serviços\").\n\n2. Informações que Coletamos\n\nColetamos informações pessoais que você nos fornece. As informações pessoais que coletamos dependem do contexto de suas interações conosco e dos Serviços, das escolhas que você faz e dos produtos e recursos que você usa. As informações pessoais que coletamos podem incluir o seguinte:\n\n•\tNome e Dados de Contato: Coletamos seu nome, endereço de email, endereço postal, número de telefone e outros dados de contato semelhantes.\n\n•\tCredenciais: Coletamos senhas, dicas de senha e informações de segurança semelhantes usadas para autenticação e acesso à conta.\n\n•\tDados de Pagamento: Coletamos dados necessários para processar seu pagamento, como número do cartão de crédito e o código de segurança associado ao seu instrumento de pagamento.\n\n•\tDados de Login em Redes Sociais: Fornecemos a opção de registrar-se usando detalhes da conta de redes sociais, como Facebook, Twitter ou outras redes sociais. Se você escolher registrar-se dessa maneira, coletaremos as informações descritas na seção \"Como Lidamos com Seus Logins Sociais\".\n\n•\tOutros Dados Necessários: Além das informações mencionadas, podemos coletar outros dados conforme necessário para fornecer nossos serviços e melhorar sua experiência, sempre com seu consentimento explícito quando necessário.\n\n3. Como Usamos Suas Informações\n\nUsamos informações pessoais coletadas através de nossos Serviços para diversos fins comerciais descritos abaixo. Processamos suas informações pessoais para esses fins com base em nossos legítimos interesses comerciais, para celebrar ou executar um contrato com você, com seu consentimento e/ou para conformidade com nossas obrigações legais. Indicamos os fundamentos de processamento específicos em que confiamos ao lado de cada propósito listado abaixo:\n\n•\tPara facilitar a criação e o processo de login da conta.\n\n•\tPara enviar informações administrativas para você por razões comerciais, legais e/ou possivelmente por razões contratuais.\n\n•\tPara cumprir e gerenciar seus pedidos.\n\n•\tPara gerenciar contas de usuário.\n\n•\tPara enviar comunicações de marketing e promocionais para você. Sempre daremos a opção de optar por não receber essas comunicações.\n\n•\tPara publicar depoimentos com seu consentimento.\n\n•\tPara fornecer publicidade direcionada para você.\n\n• Para solicitar feedback.\n\n•\tPara proteger nossos Serviços.\n\n•\tPara aplicar nossos termos, condições e políticas por razões comerciais, para cumprir requisitos legais e regulatórios ou em conexão com nosso contrato.\n\n•\tPara responder a solicitações legais e prevenir danos.\n\n•\tPara gerenciar contas de usuário.\n\n4. Compartilhamento de Suas Informações\n\nPodemos processar ou compartilhar seus dados que possuímos com base nos seguintes fundamentos legais:\n\n•\tConsentimento: Podemos processar seus dados se você nos der consentimento específico para usar suas informações pessoais para uma finalidade específica.\n\n• Interesses Legítimos: Podemos processar seus dados quando for razoavelmente necessário para alcançar nossos interesses comerciais legítimos.\n\n• Execução de um Contrato: Onde tivermos celebrado um contrato com você, podemos processar suas informações pessoais para cumprir os termos do nosso contrato.\n\n•\tObrigações Legais: Podemos divulgar suas informações onde formos legalmente obrigados a fazê-lo para cumprir a lei aplicável, solicitações governamentais, processos judiciais, ordens judiciais ou processos legais, como em resposta a uma ordem judicial ou uma intimação (incluindo em resposta a autoridades públicas para atender a requisitos de segurança nacional ou de aplicação da lei).\n\n•\tInteresses Vitais: Podemos divulgar suas informações onde acreditarmos ser necessário investigar, prevenir ou tomar medidas em relação a potenciais violações de nossas políticas, suspeita de fraude, situações envolvendo potenciais ameaças à segurança de qualquer pessoa e atividades ilegais, ou como evidência em litígios nos quais estivermos envolvidos.\n\n•\tCompartilhamento com Terceiros: Não compartilharemos suas informações pessoais com terceiros para fins de marketing sem seu consentimento explícito. Compartilhamos dados apenas conforme necessário para cumprir nossas obrigações contratuais e legais.\n\n5. Como Mantemos Suas Informações Seguras\n\nImplementamos medidas de segurança técnicas e organizacionais apropriadas para proteger a segurança de quaisquer informações pessoais que processamos. No entanto, também lembramos que não podemos garantir que a própria internet seja 100% segura. Embora façamos o nosso melhor para proteger suas informações pessoais, a transmissão de informações pessoais de e para nossos Serviços é por sua conta e risco. A segurança de suas informações também depende de você. Por favor, use senhas fortes e mantenha suas credenciais seguras. Você só deve acessar os serviços em um ambiente seguro.\n\n6. Seus Direitos de Privacidade\n\nEm algumas regiões (como o Espaço Econômico Europeu), você tem certos direitos sob as leis de proteção de dados aplicáveis. Estes podem incluir o direito (i) de solicitar acesso e obter uma cópia de suas informações pessoais, (ii) de solicitar retificação ou apagamento; (iii) de restringir o processamento de suas informações pessoais; e (iv) se aplicável, à portabilidade de dados. Em certas circunstâncias, você também pode ter o direito de se opor ao processamento de suas informações pessoais. Para fazer tal solicitação, use os detalhes de contato fornecidos abaixo. Consideraremos e agiremos de acordo com qualquer solicitação de acordo com as leis de proteção de dados aplicáveis.\n\nSe estivermos confiando em seu consentimento para processar suas informações pessoais, você tem o direito de retirar seu consentimento a qualquer momento. Observe, no entanto, que isso não afetará a legalidade do processamento antes de sua retirada, nem afetará o processamento de suas informações pessoais conduzido em confiança em bases de processamento legais além do consentimento.\n\nPara exercer seus direitos de privacidade, entre em contato conosco pelo email contato@scienceplay.com com sua solicitação.\n\n7. Controles para Recursos de Não Rastreamento\n\nA maioria dos navegadores da web e alguns sistemas operacionais móveis e aplicativos móveis incluem um recurso ou configuração de Não Rastrear (\"DNT\") que você pode ativar para sinalizar sua preferência de privacidade para não ter dados sobre suas atividades de navegação online monitorados e coletados. Nenhum padrão de tecnologia uniforme para reconhecer e implementar sinais DNT foi finalizado. Como tal, atualmente não respondemos a sinais de navegador DNT.\n\n8. Atualizações a Esta Política\n\nPodemos atualizar esta política de privacidade periodicamente para refletir mudanças em nossas práticas ou em requisitos legais. Qualquer mudança será publicada em nosso site e entrará em vigor imediatamente após a publicação.\n\n9. Contato\n\nSe você tiver dúvidas ou preocupações sobre nossa política de privacidade, entre em contato conosco pelo email contato@scienceplay.com',
    },
    'd3ios48e': {
      'en': 'Terms of Use',
      'pt': 'Termos de uso',
    },
    '4notzia8': {
      'en':
          'Terms of Use of Science Play Audiobook LTDA\n\n1. Acceptance of Terms\n\nUsing Science Play, you expressly declare that you have read, understood, and agree to these Terms of Use. If you do not agree with any part of these terms, do not use our application.\n\n2. Use of the Application\n\nYou agree to use Science Play only for legal purposes and following all applicable laws. You must not use the application in any way that could harm or interfere with the service\'s operation or violate the rights of third parties. Any misuse may result in the suspension or termination of your account.\n\n3. Account Registration\n\nTo use certain features of Science Play, it may be necessary to create an account. You are responsible for maintaining the confidentiality of your account information and all activities under your account. If you suspect that your account has been compromised, contact us immediately.\n\n4. Privacy\n\nOur Privacy Policy explains how we collect, use, and protect your information. By using Science Play, you agree to collecting and using your information as described in our Privacy Policy. Please read our Privacy Policy carefully.\n\n5. User Content\n\nYou are responsible for all content you post or share through Science Play. You declare that you have the necessary rights to such content and that it does not violate the rights of third parties. Any content deemed illegal or inappropriate may be removed and result in the suspension or termination of your account.\n\n6. Intellectual Property\n\nAll rights, titles, and interests related to Science Play are the exclusive property of Science Play Audiobook LTDA. You may not use, copy, modify, or distribute any part of the application without express authorization except as permitted by these Terms of Use\n.\n7. Limitation of Liability\n\nScience Play is provided \"as is\" and \"as available.\" We do not guarantee that the service will be uninterrupted or error-free. In no event shall we be liable for any direct, indirect, incidental, special, or consequential damages arising from the use or inability to use the application, except where applicable law requires liability.\n\n8. Changes to the Terms\n\nWe reserve the right to modify these Terms of Use at any time. Any changes will be posted on the application, and you will be notified in advance. Continued use of the application after such changes constitutes your acceptance of the new terms.\n\n9. Applicable Law\n\nThese Terms of Use are governed by the laws of the Federal District, Brazil. Any disputes arising out of or related to these terms will be resolved in the courts located in Brasília, Federal District, Brazil.\n\n10. Contact\n\nIf you have any questions about these Terms of Use, contact us at contato@scienceplay.com',
      'pt':
          'Termos de Uso do Science Play Audiobook LTDA\n\n1. Aceitação dos Termos\n\nAo usar o Science Play, você declara expressamente ter lido, entendido e concordado com estes Termos de Uso. Se você não concordar com qualquer parte destes termos, não use nosso aplicativo.\n\n2. Uso do Aplicativo\n\nVocê concorda em usar o Science Play apenas para fins legais e de acordo com todas as leis aplicáveis. Você não deve usar o aplicativo de qualquer forma que possa prejudicar ou interferir no funcionamento do serviço ou violar os direitos de terceiros. Qualquer uso indevido poderá resultar em suspensão ou encerramento de sua conta.\n\n3. Registro de Conta\n\nPara utilizar certas funcionalidades do Science Play, pode ser necessário criar uma conta. Você é responsável por manter a confidencialidade das informações da sua conta e por todas as atividades que ocorram sob a sua conta. Se você suspeitar que sua conta foi comprometida, entre em contato imediatamente conosco.\n\n4. Privacidade\n\nNossa Política de Privacidade explica como coletamos, usamos e protegemos suas informações. Ao usar o Science Play, você concorda com a coleta e o uso de suas informações conforme descrito em nossa Política de Privacidade. Por favor, leia atentamente nossa Política de Privacidade.\n\n5. Conteúdo do Usuário\n\nVocê é responsável por todo o conteúdo que publicar ou compartilhar através do Science Play. Você declara que possui os direitos necessários para tal conteúdo e que ele não viola os direitos de terceiros. Qualquer conteúdo considerado ilegal ou inadequado poderá ser removido e resultar na suspensão ou encerramento de sua conta.\n\n6. Propriedade Intelectual\n\nTodos os direitos, títulos e interesses relacionados ao Science Play são de propriedade exclusiva da Science Play Audiobook LTDA. Você não pode usar, copiar, modificar ou distribuir qualquer parte do aplicativo sem autorização expressa, exceto conforme permitido pelos Termos de Uso.\n\n7. Limitação de Responsabilidade\n\nO Science Play é fornecido \"como está\" e \"conforme disponível\". Não garantimos que o serviço será ininterrupto ou livre de erros. Em nenhum caso seremos responsáveis por quaisquer danos diretos, indiretos, incidentais, especiais ou consequenciais decorrentes do uso ou da incapacidade de usar o aplicativo, exceto onde a lei aplicável exigir responsabilidade.\n\n8. Alterações nos Termos\n\nReservamo-nos o direito de modificar estes Termos de Uso a qualquer momento. Quaisquer alterações serão publicadas no aplicativo e você será notificado com antecedência. O uso contínuo do aplicativo após tais alterações constituirá sua aceitação dos novos termos.\n\n9. Lei Aplicável\n\nEstes Termos de Uso são regidos pelas leis do Distrito Federal, Brasil. Qualquer disputa decorrente ou relacionada a estes termos será resolvida nos tribunais localizados em Brasília, Distrito Federal, Brasil. \n\n10. Contato\n\nSe você tiver alguma dúvida sobre estes Termos de Uso, entre em contato conosco através de contato@scienceplay.com',
    },
    'xx4r9tbp': {
      'en': 'Cookie Policy',
      'pt': 'Política de Cookies',
    },
    'sdtlrceb': {
      'en':
          '1. What are cookies?\n\nCookies are small text files stored on your device (computer, smartphone, tablet) when you visit a website or use an application. They allow the site or application to recognize your device and store information about your preferences or previous actions.\n\n2. How do we use cookies?\n\nAt Science Play, we use cookies to enhance your user experience, understand how our application is used, and offer personalized content and advertisements. Specifically, we use cookies for:\n\n•\tAuthentication: To remember your login and preferences.\n\n•\tPerformance Analysis: To understand how our application is used and improve its performance.\n\n•\tAdvertising: Display relevant advertisements for you.\n\n•\tFunctionality: To store your preferences and provide advanced functionalities.\n\n3. Types of cookies we use\n\n•\tStrictly Necessary Cookies: These cookies are essential for the functioning of our application and cannot be disabled without negatively impacting your experience.\n\n•\tPerformance Cookies: These cookies collect information about how users utilize our application, allowing us to improve its operation.\n\n•\tFunctional Cookies: These cookies allow our application to remember the choices you make (such as your username, language, or region you are in) and provide enhanced, more personalized features.\n\n•\tAdvertising Cookies: These cookies are used to deliver more relevant advertisements to you and your interests.\n\n4. How to manage cookies\n\nYou can manage or disable cookies directly in your browser or device settings. Below are some links to help you set cookie preferences in the most popular browsers:\n\n•\tGoogle Chrome \n●\tMozilla Firefox\n●\tSafari\n●\tMicrosoft Edge \n\nRemember that disabling cookies may cause some of Science Play\'s functionalities to malfunction. You accept our use of cookies by continuing to use our site or application with the current cookie settings.\n\n5. Third-party cookies\n\nWe may allow third parties to use cookies on our application for the abovementioned purposes. These third parties include analytics service providers and advertising networks. We ensure that these third parties comply with applicable data protection regulations.\n\n6. Changes to this Cookie Policy\n\nWe may update this Cookie Policy periodically to reflect changes in our practices or legal requirements. Any changes will be posted on our application and will take effect immediately upon posting.\n\n7. Contact\n\nIf you have any questions or concerns about our Cookie Policy, please contact us at contato@scienceplay.com.',
      'pt':
          '1. O que são cookies?\t\n\nCookies são pequenos arquivos de texto que são armazenados no seu dispositivo (computador, smartphone, tablet) quando você visita um site ou usa um aplicativo. Eles permitem que o site ou aplicativo reconheça o seu dispositivo e armazene informações sobre suas preferências ou ações anteriores.\n\n2. Como usamos cookies?\n\nNo Science Play, usamos cookies para melhorar a sua experiência de usuário, entender como nosso aplicativo é usado e oferecer conteúdos e anúncios personalizados. Especificamente, usamos cookies para:\n\n•\tAutenticação: Para lembrar seu login e suas preferências.\n\n•\tAnálise de Desempenho: Para entender como nosso aplicativo é usado e melhorar a performance.\n\n•\tPublicidade: Para exibir anúncios relevantes para você.\n\n•\tFuncionalidade: Para armazenar suas preferências e fornecer funcionalidades avançadas.\n\n3. Tipos de cookies que usamos\n\n•\tCookies Estritamente Necessários: Esses cookies são essenciais para o funcionamento do nosso aplicativo e não podem ser desativados sem impactar negativamente a sua experiência.\n\n•\tCookies de Desempenho: Esses cookies coletam informações sobre como os usuários utilizam nosso aplicativo, permitindo-nos melhorar sua operação.\n\n•\tCookies Funcionais: Esses cookies permitem que nosso aplicativo se lembre das escolhas que você faz (como seu nome de usuário, idioma ou a região em que você está) e forneça recursos aprimorados e mais pessoais.\n\n•\tCookies de Publicidade: Esses cookies são usados para fornecer anúncios mais relevantes para você e seus interesses.\n\n4. Como gerenciar cookies\n\nVocê pode gerenciar ou desativar os cookies diretamente nas configurações do seu navegador ou dispositivo. Abaixo estão alguns links para ajudar você a configurar as preferências de cookies nos navegadores mais populares:\n\n•\tGoogle Chrome\n•\tMozilla Firefox\n•\tSafari\n•\tMicrosoft Edge\n\nLembre-se de que ao desativar os cookies, algumas funcionalidades do Science Play podem não funcionar corretamente. Ao continuar a usar nosso site ou aplicativo com as configurações de cookies atuais, você aceita nosso uso de cookies.\n\n5. Cookies de terceiros\n\nPodemos permitir que terceiros usem cookies no nosso aplicativo para os mesmos fins identificados acima. Esses terceiros incluem fornecedores de serviços de análise e redes de publicidade. Garantimos que esses terceiros cumprem as regulamentações aplicáveis de proteção de dados.\n\n6. Alterações nesta Política de Cookies\n\nPodemos atualizar esta Política de Cookies periodicamente para refletir mudanças em nossas práticas ou em requisitos legais. Qualquer mudança será publicada no nosso aplicativo e entra em vigor imediatamente após a publicação.\n\n7. Contato\n\nSe você tiver dúvidas ou preocupações sobre nossa Política de Cookies, entre em contato conosco através de contato@scienceplay.com.',
    },
    'dnpb70wh': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Explore
  {
    'bsl7wvxw': {
      'en': 'Explore',
      'pt': 'Explorar',
    },
    '8shhshsl': {
      'en': 'Search',
      'pt': 'Pesquisar',
    },
    'e9igxtbm': {
      'en': 'Content that we love',
      'pt': 'Conteúdos que amamos',
    },
    '71yp0wxj': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    'rgt6f4q1': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    'c5pa0yfd': {
      'en': 'a',
      'pt': 'a',
    },
    'o5ibmr50': {
      'en': 'Failed to load this content',
      'pt': 'Falha ao carregar este conteúdo',
    },
    'bhemrtm7': {
      'en': 'Book Content Quests',
      'pt': 'Missões de conteúdo de livro',
    },
    'f9yzp6d2': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    '5355xvxa': {
      'en': 'Global Ranking',
      'pt': 'Classificação Global',
    },
    's2wxbxsc': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    'xt5ukrky': {
      'en': 'Top Free content',
      'pt': 'Principais conteúdos gratuitos',
    },
    'i9udb0gw': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    '52pehp0a': {
      'en': 'Top Premium content',
      'pt': 'Top conteúdos pagos',
    },
    'k58g5u4o': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    'saps28ht': {
      'en': 'Tracks',
      'pt': 'Playlists',
    },
    'gxb57ygh': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    'trdy9prx': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    '9e25t8y7': {
      'en': 'Failed to load this tracks',
      'pt': 'Falha ao carregar estas playlists',
    },
    'g1t7jkvm': {
      'en': 'Areas',
      'pt': 'Áreas',
    },
    '5ulazlhk': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    'h7wenz0p': {
      'en': 'Explore',
      'pt': 'Explorar',
    },
  },
  // My_wallet
  {
    'dt7c3xvy': {
      'en': 'My subscription',
      'pt': 'Minha assinatura',
    },
    'kb2wnxj8': {
      'en': 'Available Credits',
      'pt': 'Créditos \ndisponíveis',
    },
    'ma385sfj': {
      'en': 'Earned XP',
      'pt': 'XP \nganho',
    },
    'f1hvy4e4': {
      'en':
          'Credits can be used to access Premium content and can be bought with money or XP.',
      'pt':
          'Os créditos podem ser usados ​​para acessar conteúdo Premium e podem ser comprados com dinheiro ou XP.',
    },
    '60easu9k': {
      'en': 'See available plans',
      'pt': 'Veja os planos disponíveis',
    },
    'qano3ly2': {
      'en': 'Current plan',
      'pt': 'Plano atual',
    },
    'wmemjsma': {
      'en': 'Cancel subscription',
      'pt': 'Cancelar assinatura',
    },
    'tisqpo0i': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Available_plans
  {
    'cshqs4rx': {
      'en': 'Available Plans',
      'pt': 'Planos disponíveis',
    },
    'b1jem4ti': {
      'en': 'Current Plan',
      'pt': 'Plano atual',
    },
    '8fiwx6nw': {
      'en': 'Downgrade',
      'pt': 'Alterar plano',
    },
    '8gi48nnz': {
      'en': 'Free',
      'pt': 'Gratuito',
    },
    'zha2fd9v': {
      'en':
          'Earn credits for using the platform and exchange them for premium content',
      'pt':
          'Ganhe créditos pelo uso da plataforma e troque-os por conteúdo premium',
    },
    '9dj31f7j': {
      'en': 'Special offer',
      'pt': 'Oferta especial',
    },
    'n9fs8dat': {
      'en': 'Current Plan',
      'pt': 'Plano atual',
    },
    'c657f1a0': {
      'en': 'Premium Professional',
      'pt': 'Profissional Premium',
    },
    'fpjkg3a3': {
      'en': 'Get unlimited acces to all our paid content',
      'pt': 'Obtenha acesso ilimitado a todo o nosso conteúdo pago',
    },
    '8vd3gv9f': {
      'en': 'Special offer',
      'pt': 'Oferta especial',
    },
    'crlszjh0': {
      'en': 'Premium Student',
      'pt': 'Aluno Premium',
    },
    '4766ngbq': {
      'en': 'Get unlimited acces to all our paid content',
      'pt': 'Obtenha acesso ilimitado a todo o nosso conteúdo pago',
    },
    '4gfmsfp3': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Premium_professional
  {
    'hwy6p9xr': {
      'en': 'Premium Professional',
      'pt': 'Profissional Premium',
    },
    '7m2o1mnt': {
      'en': 'Over 100 health & medicin content per week',
      'pt': 'Mais de 100 conteúdos de saúde e medicina por semana',
    },
    '7sh5eduh': {
      'en': 'Unlimited access to all paid content',
      'pt': 'Acesso ilimitado a todo o conteúdo pago',
    },
    'ybc2n12f': {
      'en': 'Early access to new content',
      'pt': 'Acesso antecipado a novos conteúdos',
    },
    'e8d1bugu': {
      'en': 'Monthly',
      'pt': 'Por mês',
    },
    'z0dqoc6x': {
      'en': '\$ 12.90',
      'pt': 'R\$ 44,90',
    },
    '0sy9ln58': {
      'en': 'Billed Monthly',
      'pt': 'Cobrado Mensalmente',
    },
    'wfwy20eu': {
      'en': 'Yearly',
      'pt': 'Por ano',
    },
    'z84byho9': {
      'en': '\$ 99.00',
      'pt': 'R\$ 359,00',
    },
    'z67dpmdf': {
      'en': 'Save \$ 33.80',
      'pt': 'Economize R\$ 179,80',
    },
    '81a4rrw5': {
      'en': 'Free 1 Week Trial',
      'pt': 'Avaliação gratuita de 1 semana',
    },
    'ddpw8tyi': {
      'en': 'Subscribe',
      'pt': 'Assinar',
    },
    'wspe9abw': {
      'en':
          'The subscription will automatically renew unless it is canceled at least 24 hours before the end of the current period.',
      'pt':
          'A assinatura será renovada automaticamente, a menos que seja cancelada pelo menos 24 horas antes do final do período atual.',
    },
    '3vtlytkw': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Premium_student
  {
    '7b9ek70v': {
      'en': 'Premium Student',
      'pt': 'Aluno Premium',
    },
    'zl03w5gn': {
      'en': 'Over 100 health & medicin content per week',
      'pt': 'Mais de 100 conteúdos de saúde e medicina por semana',
    },
    'rrovgltv': {
      'en': 'Unlimited access to all paid content',
      'pt': 'Acesso ilimitado a todo o conteúdo pago',
    },
    'zg19tpvs': {
      'en': 'Early access to new content',
      'pt': 'Acesso antecipado a novos conteúdos',
    },
    'zquhtfla': {
      'en': 'Monthly',
      'pt': 'Por mês',
    },
    'obonymor': {
      'en': '\$ 6.90',
      'pt': 'R\$ 19,90',
    },
    '2wutmjqe': {
      'en': 'Billed Monthly',
      'pt': 'Faturado Mensalmente',
    },
    'w3sdbg7y': {
      'en': 'Yearly',
      'pt': 'Por ano',
    },
    'y5i1cpzs': {
      'en': '\$ 49.00',
      'pt': 'R\$ 120,00',
    },
    'tyx3fn9v': {
      'en': 'Save \$ 33.80',
      'pt': 'Economize R\$ 118,80',
    },
    'nkgaonph': {
      'en': 'Free 1 Week Trial',
      'pt': 'Avaliação gratuita de 1 semana',
    },
    '80xrd4z1': {
      'en': 'Subscribe',
      'pt': 'Assinar',
    },
    'qib2zclh': {
      'en':
          'The subscription will automatically renew unless it is canceled at least 24 hours before the end of the current period.',
      'pt':
          'A assinatura será renovada automaticamente, a menos que seja cancelada pelo menos 24 horas antes do final do período atual.',
    },
    '9ewqedwt': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Plan_approved
  {
    'wyfe8slq': {
      'en': 'Welcome to',
      'pt': 'Bem-vindo ao',
    },
    'd0jm2ts8': {
      'en': 'Science Play App',
      'pt': 'Aplicativo Science Play',
    },
    '767d8woh': {
      'en': 'Premium',
      'pt': 'Prêmio',
    },
    '2bjhb349': {
      'en':
          'Dive into a world of unlimited knowledge and discovery. Let the journey begin!',
      'pt':
          'Mergulhe em um mundo de conhecimento e descoberta ilimitados. Deixe a jornada começar!',
    },
    'q267r6vk': {
      'en': 'That\'s great',
      'pt': 'Isso é ótimo',
    },
    '43qkjg10': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Library
  {
    '2b1ugecc': {
      'en': 'Library',
      'pt': 'Biblioteca',
    },
    'njfwhj6g': {
      'en': 'Listen to 2 audiobooks',
      'pt': 'Ouça 2 áudios',
    },
    'emt85khj': {
      'en': '40 XP',
      'pt': '40 XP',
    },
    '7r2ryikf': {
      'en': 'Failed to load your progress',
      'pt': 'Falha ao carregar o seu progresso',
    },
    'iqhykiun': {
      'en': 'Create file',
      'pt': 'Criar pasta',
    },
    'u6zcx7n1': {
      'en': 'Failed to load your files',
      'pt': 'Falha ao carregar suas pastas',
    },
    'af6id3wt': {
      'en': 'Library',
      'pt': 'Biblioteca',
    },
  },
  // My_achievements
  {
    'njp9mp7p': {
      'en': 'Achievements',
      'pt': 'Realizações',
    },
    'jartvuj7': {
      'en': 'Quest & Credits',
      'pt': 'Missão e Créditos',
    },
    '8wrarwk6': {
      'en': 'Streak',
      'pt': 'Meta diária',
    },
    'hiilrzkn': {
      'en': 'Badges',
      'pt': 'Emblemas',
    },
    'm0fgea0o': {
      'en': 'Daily Quests',
      'pt': 'Missões Diárias',
    },
    'vq7u8qgf': {
      'en': 'Explore content',
      'pt': 'Explorar conteúdo',
    },
    't0dwngrx': {
      'en': 'Content Quest',
      'pt': 'Missão de conteúdo',
    },
    'z0fsphm7': {
      'en': '30 days challenge',
      'pt': 'Desafio 30 dias',
    },
    'n8xp0gi7': {
      'en': 'How Neuroscience Sheds Light on Human Actions',
      'pt': 'Como a neurociência esclarece as ações humanas',
    },
    'chdeuwb7': {
      'en': 'The Lancet',
      'pt': 'A Lanceta',
    },
    'r1aacba1': {
      'en': '300K',
      'pt': '300 mil',
    },
    'wtlxdjb8': {
      'en': '9:12',
      'pt': '9:12',
    },
    'vq1rw8ok': {
      'en': '4.9',
      'pt': '4.9',
    },
    'przxegyj': {
      'en': 'Day 3',
      'pt': 'Dia 3',
    },
    'j4fo5xkb': {
      'en': 'Content Quest',
      'pt': 'Missão de conteúdo',
    },
    'xirbtxkr': {
      'en': 'Content Quest',
      'pt': 'Desafio de Conteúdo',
    },
    'j6f6gcgm': {
      'en': 'Listen to 2 audiobooks',
      'pt': 'Ouça 2 áudios',
    },
    'm6ymh0y0': {
      'en': '40 XP',
      'pt': '40 XP',
    },
    'wkzegurh': {
      'en': 'Failed to load your progress',
      'pt': 'Falha ao carregar seu progresso',
    },
    'zsti2z9z': {
      'en': 'Spend 15 minutes learning',
      'pt': 'Passe 15 minutos aprendendo',
    },
    '5s2tbsfp': {
      'en': '100 XP',
      'pt': '100 XP',
    },
    'mltuhir2': {
      'en': 'Failed to load your progress',
      'pt': 'Falha ao carregar seu progresso',
    },
    'iol2u2vr': {
      'en': 'My credits',
      'pt': 'Meus créditos',
    },
    'f3k535ee': {
      'en': 'Available Credits',
      'pt': 'Créditos disponíveis',
    },
    'wemrmsh8': {
      'en': 'Earned XP',
      'pt': 'XP ganho',
    },
    'q7tj8hd3': {
      'en':
          'Credits can be used to access Premium content and can be bought with money or XP.',
      'pt':
          'Os créditos podem ser usados ​​para acessar conteúdo Premium e podem ser comprados com dinheiro ou XP.',
    },
    'j2j9dbs0': {
      'en': 'Be Premium and get unlimited acess to all our content.',
      'pt': 'Seja Premium e tenha acesso ilimitado a todo o nosso conteúdo.',
    },
    'mtri9sfp': {
      'en': 'See all plans',
      'pt': 'Ver todos os planos',
    },
    'hpyp1x4m': {
      'en': '120 credits',
      'pt': '120 créditos',
    },
    't2946ffd': {
      'en': '\$9,90 or 1200XP',
      'pt': 'R\$ 9,90 ou 1200XP',
    },
    'piykf1ty': {
      'en': '250 credits',
      'pt': '250 créditos',
    },
    'xvtauo8m': {
      'en': '\$19,90 or 2000XP',
      'pt': 'R\$ 19,90 ou 2000XP',
    },
    'g4bekxxn': {
      'en': '600 credits',
      'pt': '600 créditos',
    },
    'u3gnvcx0': {
      'en': '\$29,90 or 4500XP',
      'pt': 'R\$ 29,90 ou 4500XP',
    },
    '895gr5kq': {
      'en': 'Last badges',
      'pt': 'Últimos emblemas',
    },
    'gyz7610r': {
      'en': 'All badges',
      'pt': 'Todos os emblemas',
    },
    'ifm0zila': {
      'en': 'Greater Guidance',
      'pt': 'Maior Orientação',
    },
    'r6wdex0i': {
      'en': 'Complete a content quest',
      'pt': 'Conclua uma missão de conteúdo',
    },
    'n90sbtdr': {
      'en': 'Track your brain',
      'pt': 'Rastreie seu cérebro',
    },
    '16l408v3': {
      'en': 'Starts a track content',
      'pt': 'Inicia um conteúdo de faixa',
    },
    'd4zmw1ko': {
      'en': 'Neurolover',
      'pt': 'Neurolover',
    },
    'zij3v9kl': {
      'en': 'Complete a Track about Neuroscience',
      'pt': 'Conclua um curso sobre neurociência',
    },
    'i48s2go9': {
      'en': 'day streak!',
      'pt': 'dias de estudo!',
    },
    '2e27kexa': {
      'en': 'Science Master',
      'pt': 'Science Master',
    },
    '2amcxtzb': {
      'en': 'This week',
      'pt': 'Esta semana',
    },
    'qf201xs2': {
      'en': 'Study today to extend your streak!',
      'pt': 'Estude hoje para aumentar sua sequência!',
    },
    'v9r0sf2q': {
      'en': 'Explore content',
      'pt': 'Explorar conteúdos',
    },
    'nam5cmdh': {
      'en': 'Failed to load your progress',
      'pt': 'Falha ao carregar seu progresso',
    },
    '4ze72k11': {
      'en': 'Science Master’s Rewards',
      'pt': 'Recompensa Science Master',
    },
    'pbrkog7p': {
      'en': 'Reach a 30 day Streak to unlock',
      'pt': 'Alcance 30 dias consecutivos de estudo para liberar',
    },
    '5jxc848s': {
      'en': 'DISCLAIMER:',
      'pt': 'ESCLARECIMENTO:',
    },
    'wj3y1acd': {
      'en':
          'Badges are interactive. They do not allow the misuse of the profession.',
      'pt':
          'Os emblemas são interativos. Eles não permitem o mau uso da profissão.',
    },
    '3qy9s362': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // For_you
  {
    '42m6w692': {
      'en':
          'Parece que você está sem internet... Tente conectar para o melhor funcionamento do app.',
      'pt': '',
    },
    '0reelmla': {
      'en': 'For me',
      'pt': 'Para mim',
    },
    'bwxi1zel': {
      'en': 'Achievements',
      'pt': 'Conquistas',
    },
    '3ej8pp1k': {
      'en': 'See all',
      'pt': 'Veja todas',
    },
    '2pkdlk9m': {
      'en': '- day streak!',
      'pt': '- dias de estudo!',
    },
    'wckxw4l4': {
      'en': 'Track the consecutive days \nyou\'ve practiced.',
      'pt': 'Acompanhe os dias consecutivos\nque você estudou.',
    },
    'jiw5degc': {
      'en': 'Daily Quests',
      'pt': 'Desafios diários',
    },
    'vi61m17w': {
      'en': 'Earn XP by completing the quests',
      'pt': 'Ganhe XP completando desafios',
    },
    'wfw9w2vf': {
      'en': 'Listen two audiobooks',
      'pt': 'Ouça dois audiobooks',
    },
    'lg1f09cz': {
      'en': '40 XP',
      'pt': '40 XP',
    },
    'esa0wm0j': {
      'en': 'Spend 15 minutes learning',
      'pt': 'Passe 15 minutos aprendendo',
    },
    'o3ceoqnh': {
      'en': '100 XP',
      'pt': '100 XP',
    },
    '4a870q98': {
      'en': 'Content Quest',
      'pt': 'Desafio de conteúdo',
    },
    '2c7wuwzw': {
      'en': 'Failed to load your progress',
      'pt': 'Falha ao carregar seu progresso',
    },
    '2b593gj6': {
      'en': 'Back where you stopped',
      'pt': 'Continue de onde você parou',
    },
    '3fpwhql5': {
      'en': 'Content that you haven\'t finished yet',
      'pt': 'Conteúdo que você não terminou ainda',
    },
    'j7fmlh2s': {
      'en': 'Audio',
      'pt': 'Áudio',
    },
    'lerveng9': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    'crrz50v5': {
      'en': 'Content Quests for you',
      'pt': 'Missões de conteúdo para você',
    },
    'aqqv4d4z': {
      'en': 'Join quests to consume a extense type of content',
      'pt': 'Participe de missões para consumir um extenso tipo de conteúdo',
    },
    'u1j75syz': {
      'en': '15, 30 ou 60 days challenge',
      'pt': 'Desafio de 15, 30 ou 60 dias',
    },
    'c26b7k1u': {
      'en': 'The Brain That Changes \nItself',
      'pt': 'O cérebro que muda \nEm si',
    },
    '72bo2etg': {
      'en': 'By Norman Doidge, M.D.',
      'pt': 'Por Norman Doidge, MD',
    },
    'xg9a9s4h': {
      'en': 'In progress',
      'pt': 'Em andamento',
    },
    '5tqecq8g': {
      'en': '15, 30 ou 60 days challenge',
      'pt': 'Desafio de 15, 30 ou 60 dias',
    },
    'iocg4rh9': {
      'en': 'The Man Who Mistook His Wife for a Hat',
      'pt': 'O homem que confundiu sua esposa com um chapéu',
    },
    'w2kaufgc': {
      'en': 'By Oliver Sacks',
      'pt': 'Por Oliver Sacks',
    },
    'mtodh85d': {
      'en': 'Completed',
      'pt': 'Concluído',
    },
    'ziwz0t8p': {
      'en': '15, 30 ou 60 days challenge',
      'pt': 'Desafio de 15, 30 ou 60 dias',
    },
    'zrgtkrjn': {
      'en': 'The Science of Stress',
      'pt': 'A Ciência do Estresse',
    },
    'hl1s3ah5': {
      'en': 'By Robert M. Sapolsky',
      'pt': 'Por Robert M. Sapolsky',
    },
    '5nsuoi1y': {
      'en': 'Start now',
      'pt': 'Comece agora',
    },
    '2zqr3sih': {
      'en': 'Selected just for you',
      'pt': 'Selecionado só para você',
    },
    'wa734ko8': {
      'en': 'Based on your interests',
      'pt': 'Com base nos seus interesses',
    },
    '75axocnj': {
      'en': 'Audio',
      'pt': 'Áudio',
    },
    '7068wq2x': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    'riempnbm': {
      'en': 'Failed to load this contents',
      'pt': 'Falha ao carregar estes conteúdos',
    },
    'cwv3f8dc': {
      'en': 'For me',
      'pt': 'Para mim',
    },
  },
  // Track
  {
    'qe4wum34': {
      'en': 'Track',
      'pt': 'Playlist',
    },
    '4990v30o': {
      'en': 'by Science Play',
      'pt': 'por Science Play',
    },
    'f813xxpc': {
      'en': 'Rate this track',
      'pt': 'Avalie esta playlist',
    },
    'xxcxzoid': {
      'en': 'About this track',
      'pt': 'Sobre esta playlist',
    },
    '674tag58': {
      'en': 'See more',
      'pt': 'Veja mais',
    },
    'y4y3yia3': {
      'en': 'Audios',
      'pt': 'Áudios',
    },
    '0onr1q27': {
      'en': '1',
      'pt': '1',
    },
    'a4eh71pi': {
      'en': 'Failed to load these audios, please try reload…',
      'pt': 'Falha ao carregar os áudios, por favor tente recarregar...',
    },
    '6wa3uebq': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Inside_content
  {
    '39ul4322': {
      'en': 'Start',
      'pt': 'Começar',
    },
    '53pqkj00': {
      'en':
          'Batista S, Saldanha A - Neuroscientific studies... , 2022 - Journal of Clinical Investigation (JCI)',
      'pt':
          'Batista S, Saldanha A - Estudos neurocientíficos... , 2022 - Journal of Clinical Investigation (JCI)',
    },
    '3fbh8885': {
      'en': 'Go to content',
      'pt': 'Ir para o conteúdo',
    },
    '72h8nb0i': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // About_author
  {
    '14yv5icq': {
      'en': 'Experience',
      'pt': 'Experiência',
    },
    '6cpr0tri': {
      'en': 'Research Interests',
      'pt': 'Interesses de pesquisa',
    },
    'cvm8qr0e': {
      'en': 'There is no information about the author\'s research interests.',
      'pt': 'Não há informações sobre os interesses de pesquisa do autor.',
    },
    'vwfdn18v': {
      'en': 'Article',
      'pt': 'Artigo',
    },
    '7dufufdc': {
      'en': '2',
      'pt': '2',
    },
    'dvrxrvkg': {
      'en': '•',
      'pt': '•',
    },
    'vb52k74f': {
      'en': '•',
      'pt': '•',
    },
    '8s7gptll': {
      'en': 'See all heads of each category',
      'pt': 'Veja todos os chefes de cada categoria',
    },
    'pah3egz8': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Heads_each_area
  {
    '60az9bpt': {
      'en': 'Specialists',
      'pt': 'Especialistas',
    },
    'jbcwj43o': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Inside_file
  {
    'tq31yfc1': {
      'en': 'Finish content',
      'pt': 'Concluir conteúdo',
    },
    'hzr5xlzy': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Inside_file_summary
  {
    '9g0uhvoy': {
      'en': 'Content',
      'pt': 'Contente',
    },
    'udy99qi3': {
      'en': '1.  Introduction',
      'pt': '1. Introdução',
    },
    'c5n3z2oi': {
      'en': '1',
      'pt': '1',
    },
    '0rpbwef4': {
      'en': '2.  Neural Mechanisms of Creativity',
      'pt': '2. Mecanismos Neurais de Criatividade',
    },
    'hq8g9xmc': {
      'en': '2',
      'pt': '2',
    },
    '5a128spb': {
      'en': '3.  Neurotransmitters and Creative Th...',
      'pt': '3. Neurotransmissores e elementos criativos...',
    },
    'dzx0g8kt': {
      'en': '3',
      'pt': '3',
    },
    'vqhs2cjv': {
      'en': '4.  Environmental Influences of Creativ...',
      'pt': '4. Influências Ambientais da Criatividade...',
    },
    'efz0wf6t': {
      'en': '4',
      'pt': '4',
    },
    't1kl9viw': {
      'en': '5.  Conclusion',
      'pt': '5. Conclusão',
    },
    'wpofumhg': {
      'en': '5',
      'pt': '5',
    },
    '18lgioq5': {
      'en': 'Highly relevant insights',
      'pt': 'Insights altamente relevantes',
    },
    '70ffax3g': {
      'en': '6',
      'pt': '6',
    },
    'kqn6jinv': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Inside_audio
  {
    'rul21j4u': {
      'en': 'About this content',
      'pt': 'Sobre este conteúdo',
    },
    'tx6zzn7i': {
      'en': 'See more',
      'pt': 'Ver mais',
    },
    'rey4py4s': {
      'en': 'Transcription',
      'pt': 'Transcrição',
    },
    'jd393adm': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // TrackBuy
  {
    '6k11xyzm': {
      'en': 'Track',
      'pt': 'Playlist',
    },
    '3wukzxgb': {
      'en': 'by Science Play',
      'pt': 'por Science Play',
    },
    'xznxqo7g': {
      'en': 'Audiobooks',
      'pt': 'Audiolivros',
    },
    'b1llbzeo': {
      'en': '15, 30 or 60 days Quest',
      'pt': 'Missão de 15, 30 ou 60 dias',
    },
    'dqxrv3b7': {
      'en': 'Be Premium',
      'pt': 'Seja Premium',
    },
    'jsa2x5jf': {
      'en': 'Join Quest',
      'pt': 'Junte-se à missão',
    },
    'liqxgcow': {
      'en': 'About this track',
      'pt': 'Sobre esta playlist',
    },
    'k02q8bkk': {
      'en': 'See more',
      'pt': 'Veja mais',
    },
    'j3lq9lia': {
      'en': 'Audios',
      'pt': 'Áudios',
    },
    'a3z016xx': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Inside_my_files
  {
    'gvdxqjv8': {
      'en': 'Search for content',
      'pt': 'Pesquisar por conteúdo',
    },
    '3ji0dydr': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    '1xm349v6': {
      'en': 'a',
      'pt': 'a',
    },
    'v9j8so4p': {
      'en': 'Add a content as favorite to see it here...',
      'pt': 'Adicione um conteúdo como favorito para vê-lo aqui...',
    },
    '4ycorzpz': {
      'en': 'Start a content to see it here...',
      'pt': 'Comece um conteúdo para vê-lo aqui...',
    },
    'dhndwqis': {
      'en': 'Complete a content to see it here...',
      'pt': 'Complete um conteúdo para vê-lo aqui',
    },
    'mrnyhqfg': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Profile
  {
    'm9085u6w': {
      'en': 'Upgrade your account',
      'pt': 'Atualize sua conta',
    },
    '5sukjegq': {
      'en': 'Account',
      'pt': 'Conta',
    },
    'mzdu9hoj': {
      'en': 'Personal Informations',
      'pt': 'Informações pessoais',
    },
    'vudah89w': {
      'en': 'Language',
      'pt': 'Linguagem',
    },
    'v7tuw6gy': {
      'en': 'Content preferences',
      'pt': 'Preferências de conteúdo',
    },
    'xm1hzw9a': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    '2ox8ou1b': {
      'en': 'My subscription',
      'pt': 'Minha assinatura',
    },
    'ct2qyffa': {
      'en': 'Security Preferences',
      'pt': 'Preferências de segurança',
    },
    'tteej4zm': {
      'en': 'Privacy and data',
      'pt': 'Privacidade e dados',
    },
    'nhhw1688': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'surdvwx8': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Inside_audio_simple
  {
    '8rypitpu': {
      'en': 'About this content',
      'pt': 'Sobre este conteúdo',
    },
    'fx0238ut': {
      'en': 'See more',
      'pt': 'Ver mais',
    },
    'ht4dj3ug': {
      'en': 'Transcription',
      'pt': 'Transcrição',
    },
    'eo0lyd1g': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // TrackArea
  {
    'xxak0rnx': {
      'en': '4 audiobooks',
      'pt': '4 audiolivros',
    },
    'i7m6okpr': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_1_occupation
  {
    '3jtvf70p': {
      'en': 'What is your occupation or interest?',
      'pt': 'Qual é a sua ocupação ou interesse?',
    },
    'tcb0ngk8': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'brms4k2u': {
      'en': 'Maybe later',
      'pt': 'Talvez mais tarde',
    },
    'kj9038i1': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_2_area
  {
    'zgnu7wv6': {
      'en': 'What is your area of interest?',
      'pt': 'Qual é a sua área de interesse?',
    },
    'nali7ddc': {
      'en':
          'Tell us what you’re interested in so we can customize the app for your needs',
      'pt':
          'Diga-nos no que você está interessado para que possamos personalizar o aplicativo de acordo com suas necessidades',
    },
    'gsrj1bo2': {
      'en': 'Other',
      'pt': 'Outro',
    },
    'kma7qr9b': {
      'en': 'Other:',
      'pt': 'Outro:',
    },
    '3e1bwsli': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'uhmjx7ov': {
      'en': 'Maybe later',
      'pt': 'Talvez mais tarde',
    },
    '72oglpdu': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_3_level
  {
    'crok166i': {
      'en': 'What is your current level of knowledge in the healthcare field?',
      'pt': 'Qual é o seu nível atual de conhecimento na área da saúde?',
    },
    'h1tkru98': {
      'en': 'Student',
      'pt': 'Estudante',
    },
    '2sq21rsc': {
      'en': 'Graduate',
      'pt': 'Graduação',
    },
    '4d2k1wxq': {
      'en': 'Postgraduate',
      'pt': 'Pós-graduação',
    },
    '5fwuz1tk': {
      'en': 'Master\'s Degree',
      'pt': 'Mestrado',
    },
    '1qznsstv': {
      'en': 'Doctoral Degree',
      'pt': 'Doutorado',
    },
    '01pzj376': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'eyl67d12': {
      'en': 'Maybe later',
      'pt': 'Talvez mais tarde',
    },
    'dfz8ecah': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_4_goals
  {
    'n4s0njww': {
      'en': 'What are your goals when using this app?',
      'pt': 'Quais são seus objetivos ao usar este aplicativo?',
    },
    'lvccwy32': {
      'en': 'Stay up to date with the latest research and discoveries',
      'pt': 'Manter-se atualizado com as últimas pesquisas e descobertas',
    },
    'lra9xpeq': {
      'en': 'Prepare for exams or tests',
      'pt': 'Se preparar para exames ou testes',
    },
    'vfzk3mrj': {
      'en': 'Deepen my knowledge in a specific specialty',
      'pt': 'Aprofundar meus conhecimentos em uma especialidade específica',
    },
    'bg7lvbho': {
      'en': 'Learn new concepts and techniques',
      'pt': 'Aprender novos conceitos e técnicas',
    },
    's7wvkgjk': {
      'en': 'Content for lectures and classes',
      'pt': 'Conteúdo para palestras e aulas',
    },
    'q2yatyxt': {
      'en': 'Ideas for Social Media Content',
      'pt': 'Ideias para conteúdo de mídia social',
    },
    'x7gofo74': {
      'en': 'Academic Research',
      'pt': 'Pesquisa acadêmica',
    },
    'v4rjv1mw': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'kbl3d5xg': {
      'en': 'Maybe later',
      'pt': 'Talvez mais tarde',
    },
    'ip3mab7u': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_5_dedication
  {
    'zqduln0x': {
      'en': 'How much time do you want to dedicate to app each day?',
      'pt': 'Com que frequência você deseja usar o app?',
    },
    'an8hcmg1': {
      'en': 'Daily',
      'pt': 'Diariamente',
    },
    '349g6zuu': {
      'en': '3 times a week',
      'pt': '3 vezes por semana',
    },
    'v0yhuo5e': {
      'en': 'Weekly',
      'pt': 'Semanalmente',
    },
    'nsithruf': {
      'en': 'Customize notifications',
      'pt': 'Personalizar notificações',
    },
    'mvntrdh8': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'f5jtgbmi': {
      'en': 'Maybe later',
      'pt': 'Talvez mais tarde',
    },
    'i1197ahq': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Onboarding_6_content_preference
  {
    'w6t1tjom': {
      'en':
          'Last but not least, how do you prefer to consume content? Select the options',
      'pt':
          'Por último, mas não menos importante, como você prefere consumir conteúdo? Selecione as opções',
    },
    'kgi1awyu': {
      'en': 'Texts',
      'pt': 'Textos',
    },
    '7wrc7jag': {
      'en': 'Short audios',
      'pt': 'Áudios curtos',
    },
    'ru7ieupq': {
      'en': 'Long audios',
      'pt': 'Áudios longos',
    },
    '4iwequy1': {
      'en': 'Small videos',
      'pt': 'Vídeos pequenos',
    },
    'f9ujvypa': {
      'en': 'Finish',
      'pt': 'Finalizar',
    },
    'y8bpvxn9': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // teste_checkout
  {
    '30nrwkvl': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // plan
  {
    'ne7ces3h': {
      'en': 'Security preferences',
      'pt': 'Preferências de segurança',
    },
    'q5uqvlmi': {
      'en': 'Change password',
      'pt': 'Alterar senha',
    },
    'bseqnejt': {
      'en': 'Delete account',
      'pt': 'Deletar conta',
    },
    '1gd7ydsg': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // SearchExplore
  {
    '2w30j29s': {
      'en': 'Search',
      'pt': 'Procurar',
    },
    'lhmcp4tn': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'jgvp759t': {
      'en': 'Specialists',
      'pt': 'Especialistas',
    },
    'kb72yehe': {
      'en': 'See more',
      'pt': 'Veja mais',
    },
    'g4wz4bja': {
      'en': 'Suggested',
      'pt': 'Sugestões',
    },
    'ln67h87c': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    'qpxqgaif': {
      'en': '•',
      'pt': '•',
    },
    'qkpy2sfo': {
      'en': '•',
      'pt': '•',
    },
    '1ubz7kxf': {
      'en': 'No results found.',
      'pt': 'Nenhum resultado encontrado.',
    },
    'kgny0k7u': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // content_that_we_love
  {
    'qwat9f2g': {
      'en': 'We love',
      'pt': 'Conteúdo que amamos',
    },
    'vwr4j1og': {
      'en': 'All',
      'pt': 'Todos',
    },
    '9w9q8qkt': {
      'en': 'Free',
      'pt': 'Gratuitos',
    },
    'hiyj5rqn': {
      'en': 'Premium',
      'pt': 'Pagos',
    },
    '0ams2l2v': {
      'en': 'Article',
      'pt': 'Artigo',
    },
    '8gzc1q7c': {
      'en': 'Free',
      'pt': 'Gratuito',
    },
    'qcxapqc3': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    '1v8qt604': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // book_content_quests
  {
    'akfccf71': {
      'en': 'Book Quests',
      'pt': 'Desafio de livros',
    },
    'nrb147mj': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // global_ranking
  {
    'wknehvln': {
      'en': 'Global Ranking',
      'pt': 'Ranking Global',
    },
    'odihcvsi': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // top_free_content
  {
    'g7fy99xc': {
      'en': 'Top free',
      'pt': 'Melhores gratuitos',
    },
    'z65qf18x': {
      'en': 'Article',
      'pt': 'Artigo',
    },
    'vi3tu11e': {
      'en': 'Free',
      'pt': 'Gratuito',
    },
    'at31pzxy': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // top_premium_content
  {
    'wxa6kchs': {
      'en': 'Top premium',
      'pt': 'Melhores pagos',
    },
    '0wsrsppb': {
      'en': 'Article',
      'pt': 'Artigo',
    },
    '87o8bb56': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    'uiy1pmzu': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // inside_the_global_ranking
  {
    '1wkyhggl': {
      'en': 'GLOBAL RANKING',
      'pt': 'RANKING GLOBAL',
    },
    'azde3ppx': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    '0mpb4kfy': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // All_Tracks
  {
    'riql7naw': {
      'en': 'All tracks',
      'pt': 'Todas as playlists',
    },
    '29lkop4e': {
      'en': 'Popular tracks',
      'pt': 'Playlists populares',
    },
    'icwzn2ev': {
      'en': 'See all',
      'pt': 'Ver tudo',
    },
    'krxamr6v': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    '5eeuofx3': {
      'en': 'See all',
      'pt': 'Ver todas',
    },
    '4joeofmb': {
      'en': 'See all',
      'pt': 'Ver todas',
    },
    'npdd5oaj': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    '6v4r10qj': {
      'en': 'Areas',
      'pt': 'Áreas',
    },
    'ulkq84h8': {
      'en': 'See all',
      'pt': 'Ver todas',
    },
    '9rhedbwz': {
      'en': 'See all',
      'pt': 'Ver todas',
    },
    'gjsix1bv': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // all_tracks_tracks_area
  {
    'px3uqoy8': {
      'en': 'Tracks areas',
      'pt': 'Playlists em áreas',
    },
    'v85avzte': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // all_tracks_inside_an_area
  {
    'fkxw9eun': {
      'en': 'See all',
      'pt': 'Ver todas',
    },
    'p50ds6sf': {
      'en': 'See all',
      'pt': 'Ver tudas',
    },
    'sthz54i4': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    'o0dsmbas': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // All_tracks_inside_an_area_inside_a_category
  {
    'r4kb59qy': {
      'en': 'TRACK',
      'pt': 'PLAYLIST',
    },
    'dbsjtoz5': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // all_tracks_inside_a_group
  {
    '4ema4emy': {
      'en': 'Popular tracks',
      'pt': 'Playlists populares',
    },
    'j9z0mxii': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    'e1zejucr': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Content_quest
  {
    'm029terk': {
      'en': 'Content Quest',
      'pt': 'Desafio de conteúdos',
    },
    '74tcxdg6': {
      'en': 'Book',
      'pt': 'Livro',
    },
    'px86rrew': {
      'en': 'Join Quest',
      'pt': 'Iniciar um desafio',
    },
    's3nonefe': {
      'en': 'See progress',
      'pt': 'Ver progresso',
    },
    '4d5iz239': {
      'en': 'Summary',
      'pt': 'Resumo',
    },
    '5w4fn4hc': {
      'en': 'Buy at Amazon',
      'pt': 'Comprar na Amazon',
    },
    's633440a': {
      'en': 'Chapters',
      'pt': 'Capítulos',
    },
    'ahwvy3vq': {
      'en': 'All chapters',
      'pt': 'Todos capítulos',
    },
    '5xfv33uu': {
      'en': 'Home',
      'pt': '',
    },
  },
  // Inside_content_quest_book
  {
    '5pk7f0fu': {
      'en': 'Content Quest',
      'pt': 'Desafio de conteúdo',
    },
    '812s19xf': {
      'en': 'Share',
      'pt': 'Compartilhar',
    },
    'jzdw5vc6': {
      'en': 'Book',
      'pt': 'Livro',
    },
    'kv6ujo6z': {
      'en': 'Your progress',
      'pt': 'Seu progresso',
    },
    'cp7zp80p': {
      'en': 'Schedule',
      'pt': 'Cronograma',
    },
    'db7g66fy': {
      'en': 'Pending',
      'pt': 'Pendente',
    },
    '4hkr9hbd': {
      'en': 'Checked',
      'pt': 'Feito',
    },
    'eklqem7o': {
      'en': 'Show complete schedule',
      'pt': 'Show complete schedule',
    },
    'ytda751y': {
      'en': 'Home',
      'pt': '',
    },
  },
  // Start
  {
    'liid4egn': {
      'en': 'Quiz',
      'pt': 'Neurociência e Criatividade',
    },
    'a35501po': {
      'en':
          'How well do you remember what you’ve learned? Welcome to the Knowledge Quiz!',
      'pt': 'Neurociência e Criatividade',
    },
    'oui7ngph': {
      'en': 'Start Quiz',
      'pt': '',
    },
    '5pr3vqud': {
      'en': 'Maybe later',
      'pt': '',
    },
    'l1zox9ls': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Finish
  {
    'dgjvcv1v': {
      'en': 'Nice work!',
      'pt': '',
    },
    'gpca19bq': {
      'en': '2 CORRECT',
      'pt': '',
    },
    'qxbxh4aw': {
      'en': 'You answered 2 out of 3 quiz questions correctly!',
      'pt': '',
    },
    '62g8laiy': {
      'en': '2 CORRECT',
      'pt': '',
    },
    'paf0dfto': {
      'en': 'You answered 2 out of 3 quiz questions correctly!',
      'pt': '',
    },
    'briveg6y': {
      'en': '2 CORRECT',
      'pt': '',
    },
    't1e4kpkf': {
      'en': 'You answered 2 out of 3 quiz questions correctly!',
      'pt': '',
    },
    't7rhbp0d': {
      'en': 'Retry Quiz',
      'pt': '',
    },
    'sytvd541': {
      'en': 'Done',
      'pt': '',
    },
    'eips8kre': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Question
  {
    'hc48huds': {
      'en': '1/4',
      'pt': '',
    },
    'hnb9byov': {
      'en':
          'Which neurotransmitters are mentioned in the article as being implicated in promoting creative thinking?',
      'pt': '',
    },
    '0orzy9vx': {
      'en': 'a) Dopamine, Serotonin, and Norepinephrine',
      'pt': '',
    },
    'xa58z0m0': {
      'en': 'b) Acetylcholine, GABA, and Glutamate',
      'pt': '',
    },
    'brq614so': {
      'en': 'c) Endorphins, Oxytocin, and Cortisol',
      'pt': '',
    },
    'ufisiynw': {
      'en': 'd) Epinephrine, Histamine, and Melatonin',
      'pt': '',
    },
    'awrc5qtn': {
      'en': 'Check Answer',
      'pt': '',
    },
    'v7wum5rx': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Inside_content_quest_track
  {
    '0gyf6nmm': {
      'en': 'Content Quest',
      'pt': 'Desafio de conteúdo',
    },
    '3msqiwyx': {
      'en': 'Share',
      'pt': '',
    },
    'y4tl9vrj': {
      'en': 'The Brain That Changes Itself',
      'pt': '',
    },
    'u9bkxdqc': {
      'en': 'By Norman Doidge, M.D.',
      'pt': '',
    },
    'tgkcjqw5': {
      'en': 'Book',
      'pt': 'Livro',
    },
    'z9t96tzr': {
      'en': 'In progress',
      'pt': '',
    },
    'a0b0ptaz': {
      'en': '30 days challenge',
      'pt': '',
    },
    'y90aedjq': {
      'en': 'Your progress',
      'pt': '',
    },
    'sa4dy7a8': {
      'en': '50%',
      'pt': '',
    },
    'o2f19dld': {
      'en': 'Schedule',
      'pt': '',
    },
    'fenq8kmb': {
      'en': 'Day 1',
      'pt': '',
    },
    'dgct7i2w': {
      'en': 'Pending',
      'pt': '',
    },
    'lfygeadm': {
      'en': 'JAN',
      'pt': '',
    },
    '9p6qlosw': {
      'en': '31',
      'pt': '',
    },
    '9c1nnztn': {
      'en': '1',
      'pt': '',
    },
    'pzu528xa': {
      'en': 'A woman perpertually falling',
      'pt': '',
    },
    'ln5svwmy': {
      'en': 'Chapter 1',
      'pt': '',
    },
    'et8j9ar2': {
      'en': '500K',
      'pt': '',
    },
    't95jba9z': {
      'en': '0h 33m',
      'pt': '',
    },
    'grh1ii5z': {
      'en': '4.9',
      'pt': '',
    },
    'xr3bh8sk': {
      'en': 'Day 2',
      'pt': '',
    },
    'fpt7v3ud': {
      'en': 'Pending',
      'pt': '',
    },
    'wa1ywraa': {
      'en': 'FEV',
      'pt': '',
    },
    'pfpzqb3s': {
      'en': '1',
      'pt': '',
    },
    'uhojfmlj': {
      'en': '1',
      'pt': '',
    },
    'vro9hur1': {
      'en': 'Building a Better Brain',
      'pt': '',
    },
    '0hsm85u6': {
      'en': 'Chapter 2',
      'pt': '',
    },
    'x20t18sv': {
      'en': '500K',
      'pt': '',
    },
    'knmhs8yb': {
      'en': '0h 33m',
      'pt': '',
    },
    'duhm9x1e': {
      'en': '4.9',
      'pt': '',
    },
    '4sai06n1': {
      'en': 'Show complete schedule',
      'pt': '',
    },
    'oz97vvhf': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // playerFF
  {
    's6c7ykar': {
      'en':
          'Página criada somente para adicionar o player do flutterflow e habilitar que ele rode em backgroud. Com isso é adicionado automaticamente a permissão para rodar o aplicativo em backgroud. No dia de hoje, não é possível adicionar isso a não ser baixando o código do projeto.',
      'pt': '',
    },
    'qwdplf09': {
      'en': 'Player',
      'pt': '',
    },
    '8yfgqqx1': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Inside_content_buy
  {
    'r4qxf61r': {
      'en': 'Be Premium',
      'pt': 'Seja Premium',
    },
    'iy196syo': {
      'en':
          'Batista S, Saldanha A - Neuroscientific studies... , 2022 - Journal of Clinical Investigation (JCI)',
      'pt': '',
    },
    '3rgzmh7v': {
      'en': 'See more',
      'pt': 'Veja mais',
    },
    '9azn56o7': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Redirect
  {
    '9lu0oijb': {
      'en': 'Preparing your content...',
      'pt': 'Preparando o seu conteúdo...',
    },
    '7jvyrul8': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // RedirectTrack
  {
    'ukv5ahdd': {
      'en': 'Preparing your content...',
      'pt': 'Preparando seu conteúdo...',
    },
    'f0dkhd4y': {
      'en': 'Home',
      'pt': 'Início',
    },
  },
  // Select_country_region
  {
    'emzo40eg': {
      'en': 'Select a country/region',
      'pt': 'Selecione um país/região',
    },
  },
  // Menu_bar
  {
    'ibiwqwjn': {
      'en': 'For me',
      'pt': 'Para mim',
    },
    'd9521zgb': {
      'en': 'For me',
      'pt': 'Para mim',
    },
    'cqboc2lk': {
      'en': 'Explore',
      'pt': 'Explorar',
    },
    'cgshm0ka': {
      'en': 'Explore',
      'pt': 'Explorar',
    },
    'xqr6c3m5': {
      'en': 'Tracks',
      'pt': 'Playlist',
    },
    'cp9ckokg': {
      'en': 'Tracks',
      'pt': 'Playlist',
    },
    'oi3km36y': {
      'en': 'Library',
      'pt': 'Biblioteca',
    },
    'youwcc27': {
      'en': 'Library',
      'pt': 'Biblioteca',
    },
  },
  // Change_language
  {
    '9nlv6375': {
      'en': 'Change language settings',
      'pt': 'Alterar configurações de idioma',
    },
    'ja6j3ht6': {
      'en': 'Portuguese',
      'pt': 'Português',
    },
    'siz0e7nd': {
      'en': 'English',
      'pt': 'Inglês',
    },
    'y8fxf0dk': {
      'en': 'Please select...',
      'pt': 'Por favor selecione...',
    },
    'm0tv9319': {
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
    },
    'rpr9vew1': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'g20j6223': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // Change_photo
  {
    '3kk50bup': {
      'en': 'Photo',
      'pt': 'Foto',
    },
    'ks3b2wvn': {
      'en': 'Camera',
      'pt': 'Câmera',
    },
    '1680vih0': {
      'en': 'Gallery',
      'pt': 'Galeria',
    },
    'b85bi2d9': {
      'en': 'Remove photo',
      'pt': 'Remover foto',
    },
  },
  // Create_file
  {
    'yix9cw31': {
      'en': 'Create file',
      'pt': 'Criar pasta',
    },
    'c7i9vyrq': {
      'en': 'File´s name',
      'pt': 'Nome da pasta',
    },
    'z2u6gcua': {
      'en': 'Search for contents here...',
      'pt': 'Pesquise por conteúdos aqui...',
    },
    'xud57st8': {
      'en': 'Audio',
      'pt': 'Áudio',
    },
    'rqkitxb8': {
      'en': 'Premium',
      'pt': 'Premium',
    },
    '4l2uznil': {
      'en': '•',
      'pt': '•',
    },
    'pbtznrn6': {
      'en': '•',
      'pt': '•',
    },
    '99sa3bep': {
      'en': 'Done',
      'pt': 'Feito',
    },
  },
  // Select_occupation
  {
    '9wv36wyz': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'y90w4z83': {
      'en': 'See all heads of each area',
      'pt': 'Veja todos os chefes de cada área',
    },
  },
  // DeleteFile
  {
    'zg81o413': {
      'en': 'Are you sure?',
      'pt': 'Tem certeza?',
    },
    'bbs42vvx': {
      'en': 'Delete',
      'pt': 'Excluir',
    },
    'gouheia6': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // audio_preferences
  {
    'oi93y9iy': {
      'en': 'Save',
      'pt': 'Salvar',
    },
  },
  // Select_level
  {
    'p80czf08': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'imnfvo05': {
      'en': 'Student',
      'pt': 'Estudante',
    },
    '8uprne8r': {
      'en': 'Graduate',
      'pt': 'Graduação',
    },
    '9q54pqus': {
      'en': 'Postgraduate',
      'pt': 'Pós-graduação',
    },
    'q46ydu2c': {
      'en': 'Master\'s Degree',
      'pt': 'Mestrado',
    },
    'yl5kdaxk': {
      'en': 'Doctoral Degree',
      'pt': 'Doutorado',
    },
  },
  // Select_time_available
  {
    '8l0p3q2v': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'ksgdc9jf': {
      'en': 'Daily',
      'pt': 'Diário',
    },
    'az5361hj': {
      'en': '3 times a week',
      'pt': '3 vezes por semana',
    },
    '7jr5t4cz': {
      'en': 'Weekly',
      'pt': 'Semanalmente',
    },
    'sjdcau5r': {
      'en': 'Customize notifications',
      'pt': 'Personalizar notificações',
    },
  },
  // Select_goals
  {
    '163k57fg': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'ndkgzg4j': {
      'en': 'Stay up to date with the latest research and discoveries',
      'pt': 'Manter-se atualizado com as últimas pesquisas e descobertas',
    },
    'oyp38s7r': {
      'en': 'Prepare for exams or tests',
      'pt': 'Se preparar para exames ou testes',
    },
    'v9nye3t8': {
      'en': 'Deepen my knowledge in a specific specialty',
      'pt': 'Aprofundar meus conhecimentos em uma especialidade específica',
    },
    '6mpxclao': {
      'en': 'Learn new concepts and techniques',
      'pt': 'Aprender novos conceitos e técnicas',
    },
    '82n4slw0': {
      'en': 'Content for lectures and classes',
      'pt': 'Conteúdo para palestras e aulas',
    },
    '4p7gx7cx': {
      'en': 'Ideas for Social Media Content',
      'pt': 'Ideias para conteúdo de mídia social',
    },
    'wds4j965': {
      'en': 'Academic Research',
      'pt': 'Pesquisa acadêmica',
    },
  },
  // Change_password
  {
    'jveu0mld': {
      'en': 'Change password',
      'pt': 'Alterar a senha',
    },
    'ypcjzip8': {
      'en': 'Old password',
      'pt': 'Senha Antiga',
    },
    '2ueuwfjv': {
      'en': 'New password',
      'pt': 'Nova Senha',
    },
    'b9gmq1f0': {
      'en': 'Confirm a new password',
      'pt': 'Confirme uma nova senha',
    },
    'x7sb8e93': {
      'en': 'Continue',
      'pt': 'Continuar',
    },
    'xo2vzmco': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // Delete_Account
  {
    '4tynnc07': {
      'en': 'Are you sure you want to delete your account?',
      'pt': 'Tem certeza de que deseja excluir sua conta?',
    },
    'nwcyvt8n': {
      'en': 'Your progress, data and informations will be permanently deleted.',
      'pt':
          'Seu progresso, dados e informações serão excluídos permanentemente.',
    },
    'fh0tclzj': {
      'en': 'Yes, delete account',
      'pt': 'Sim, excluir conta',
    },
    '3udeb01p': {
      'en': 'No, thanks',
      'pt': 'Não, obrigado',
    },
  },
  // Select_preference_content
  {
    'u5a0cney': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'ga21gz8u': {
      'en': 'Texts',
      'pt': 'Textos',
    },
    '4fb5ql05': {
      'en': 'Short audios',
      'pt': 'Áudios curtos',
    },
    'qdvrzcie': {
      'en': 'Long audios',
      'pt': 'Áudios longos',
    },
    'shvc52z6': {
      'en': 'Small videos',
      'pt': 'Vídeos pequenos',
    },
  },
  // Select_areas_interests
  {
    '0pys5eu3': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    '6crlcvrk': {
      'en': 'See all heads of each area',
      'pt': 'Veja todos os chefes de cada área',
    },
    'fgu01jvy': {
      'en': 'Select occupation or interest before searching for an area.',
      'pt': 'Selecione ocupação ou interesse antes de pesquisar uma área.',
    },
  },
  // Component_rate_content
  {
    'c9afsdek': {
      'en': 'Rate content',
      'pt': 'Avaliar conteúdo',
    },
    'p89i4322': {
      'en': 'How would you rate this content?',
      'pt': 'Como você avalie este conteúdo?',
    },
    'k0lvg1mf': {
      'en': 'Submit',
      'pt': 'Enviar',
    },
  },
  // More_settings_track
  {
    's4c9z7ai': {
      'en': 'Copy link',
      'pt': 'Copiar link',
    },
    'ew7ut33x': {
      'en': 'X',
      'pt': 'X',
    },
    'vc7c011h': {
      'en': 'Facebook',
      'pt': 'Facebook',
    },
    'm6frmxtz': {
      'en': 'More',
      'pt': 'Mais',
    },
    '1vet5s25': {
      'en': 'Remove from My Tracks',
      'pt': 'Remover de Minhas Playlists',
    },
    'hn6xdmfr': {
      'en': 'Add to My Tracks',
      'pt': 'Adicionar em Minhas Playlists',
    },
    '0inehgob': {
      'en': 'Rate this track',
      'pt': 'Avalie esta playlist',
    },
    'cegvww63': {
      'en': 'Go to author profile',
      'pt': 'Ir para o perfil do autor',
    },
    'ae6wzu2n': {
      'en': 'Share',
      'pt': 'Compartilhar',
    },
    '0jjakb93': {
      'en': 'Report',
      'pt': 'Reportar',
    },
  },
  // CreditConfirmation
  {
    'n0m3waxi': {
      'en': 'Confirm',
      'pt': 'Confirmar',
    },
    '3u438y6z': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // BuyCredits
  {
    'azadi797': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // See_More_About
  {
    'xjkoy27v': {
      'en': 'About this content',
      'pt': 'Sobre este conteúdo',
    },
    'xo21yvd7': {
      'en': 'About this track',
      'pt': 'Sobre essa playlist',
    },
  },
  // DayGoals
  {
    'x8ztht8k': {
      'en': 'In how many days do you want to complete this Quest?',
      'pt': 'Em quanto tempo você deseja completar este desafio?',
    },
    '33m7x0iw': {
      'en': 'You can change it later if you need.',
      'pt': 'Você pode alterar isso depois se necessário.',
    },
    'lt27l1o2': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // Rate_quest
  {
    'et3a2do8': {
      'en': 'Rate Quest',
      'pt': 'Avalie este desafio',
    },
    'pklvlljv': {
      'en': 'How would you rate this quest?',
      'pt': 'Como você avalia este desafio?',
    },
    'bb6mvg00': {
      'en': 'Submit',
      'pt': 'Avaliar',
    },
  },
  // Rate_track
  {
    'f3kg7nle': {
      'en': 'Rate content',
      'pt': 'Avaliar conteúdo',
    },
    'pu6lg6d8': {
      'en': 'How would you rate this content?',
      'pt': 'Como você avalia este conteúdo?',
    },
    '3wkcq29a': {
      'en': 'Submit',
      'pt': 'Enviar',
    },
  },
  // More_settings_audio
  {
    'ouurss8o': {
      'en': 'Copy link',
      'pt': 'Copiar link',
    },
    'fi5deqb6': {
      'en': 'X',
      'pt': 'X',
    },
    'mj1k5rti': {
      'en': 'Instagram',
      'pt': 'Instagram',
    },
    'lecf2f8q': {
      'en': 'More',
      'pt': 'Mais',
    },
    '9jz6i8p3': {
      'en': 'Unfavorite',
      'pt': 'Remover dos favoritos',
    },
    'hqj93mzm': {
      'en': 'Add to favorites',
      'pt': 'Adicionar aos favoritos',
    },
    'dfywe69h': {
      'en': 'Add to library',
      'pt': 'Adicionar a biblioteca',
    },
    'yt64s0br': {
      'en': 'Rate this content',
      'pt': 'Avalie este conteúdo',
    },
    '09db7a9k': {
      'en': 'Go to author profile',
      'pt': 'Ver o perfil do autor',
    },
    '5m94rdm6': {
      'en': 'Share',
      'pt': 'Compartilhar',
    },
    'rg9e12z6': {
      'en': 'Report',
      'pt': 'Reportar',
    },
    'hzrqbpn9': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // Add_to_library
  {
    '28eaar5r': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    '4u2umfj9': {
      'en': '+ Create file to this content',
      'pt': '+ Crie uma pasta para este conteúdo',
    },
  },
  // ChangeDays
  {
    'at1k7rsp': {
      'en': 'Your progress will not be lost.',
      'pt': 'Seu progresso não será perdido.',
    },
    'jkastjde': {
      'en': 'Yes, change it',
      'pt': 'Sim, alterar',
    },
    '0xmd9h7a': {
      'en': 'No, thanks',
      'pt': 'Não, obrigado',
    },
  },
  // UndoProgress
  {
    'glpw1lec': {
      'en': 'Undo progress?',
      'pt': '',
    },
    'dmxdorme': {
      'en': 'Yes, uncheck',
      'pt': '',
    },
    '1n4x3dye': {
      'en': 'No, thanks',
      'pt': '',
    },
  },
  // ResetAll
  {
    'sxwfzb9r': {
      'en': 'Are you sure you want to reset all progress?',
      'pt': '',
    },
    '46uuwpab': {
      'en': 'Your progress will be permanently lost.',
      'pt': '',
    },
    '2gp7vhv4': {
      'en': 'Yes, reset all progress',
      'pt': '',
    },
    'rfwlokab': {
      'en': 'No, thanks',
      'pt': '',
    },
  },
  // ExitQuest
  {
    '2dne8lc1': {
      'en': 'Are you sure you want to exit this Quest?',
      'pt': 'Tem certeza que deseja sair desse Desafio?',
    },
    'hznsvyca': {
      'en': 'Your progress will be permanently lost.',
      'pt': 'Seu progresso será perdido.',
    },
    '4xzevgpb': {
      'en': 'Yes, exit Quest',
      'pt': 'Sim, sair do Desafio',
    },
    'iydqq3st': {
      'en': 'No, thanks',
      'pt': 'Não, obrigado',
    },
  },
  // Create_file_express
  {
    'gv2lasc8': {
      'en': 'Create file',
      'pt': 'Criar pasta',
    },
    'cuwwqexp': {
      'en': 'File´s name',
      'pt': 'Nome da pasta',
    },
    '8t42stp2': {
      'en': 'Save',
      'pt': 'Salvar',
    },
  },
  // QuestSettings
  {
    'n9vdwgdu': {
      'en': 'Quest settings',
      'pt': 'Configurações do desafio',
    },
    'k2fe5rj0': {
      'en': 'Days challenge:',
      'pt': 'Dias do desafio:',
    },
    '61kt59xv': {
      'en': 'Status:',
      'pt': 'Status:',
    },
    'f9nsvqjm': {
      'en': 'Active',
      'pt': 'Ativo',
    },
    '6rbnv10r': {
      'en': 'Paused',
      'pt': 'Pausado',
    },
    'iil4urq9': {
      'en': 'Reset all progress',
      'pt': 'Resetar todo progresso',
    },
    '1fzpz7xl': {
      'en': 'Exit Quest',
      'pt': 'Sair do desafio',
    },
    'wssqo833': {
      'en': 'Back',
      'pt': 'Voltar',
    },
  },
  // Notes
  {
    'urp07joj': {
      'en': 'Notes',
      'pt': 'Notas',
    },
    'gm3pmcvi': {
      'en':
          'Take notes during the content. You\'ll be able to find this information later to review at any time.',
      'pt':
          'Faça anotações durante o conteúdo. Você será capaz de encontrar essa informação depois para rever quando quiser.',
    },
    'cv42wlgd': {
      'en': '•',
      'pt': '•',
    },
    'y5inxkiz': {
      'en': 'Private note',
      'pt': 'Anotação privada',
    },
    'wnhmlaef': {
      'en': '+ Add note',
      'pt': '+ Adicionar nota',
    },
    '45kie7mr': {
      'en': '',
      'pt': '',
    },
    '5b5dx3ui': {
      'en': 'Add your note here...',
      'pt': 'Adicione seu comentário aqui',
    },
    '4pn4hhaa': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'vnnwpru6': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // Transcription
  {
    'q15mcg4z': {
      'en': 'Transcription',
      'pt': 'Transcrição',
    },
  },
  // Component_report_transcription
  {
    'f5o8szp5': {
      'en': 'Report a problem',
      'pt': 'Reportar um problema',
    },
    'jipksjzx': {
      'en': 'What\'s your concern with this content?',
      'pt': 'Qual o problema com esse conteúdo?',
    },
    'lg1lsqea': {
      'en': 'The transcription is incorrect',
      'pt': 'A transcrição está incorreta',
    },
    'r9vj4xg2': {
      'en': 'The transcription isn\'t in sync with the audio',
      'pt': 'A transcrição não está sincronizada com o áudio',
    },
    'z3n35yln': {
      'en': 'It\'s the wrong transcript',
      'pt': 'A transcrição está errada',
    },
    'doix414v': {
      'en': 'My concern isn\'t here',
      'pt': 'Outro problema',
    },
    'mvqucd82': {
      'en': '',
      'pt': '',
    },
    'g4k1m0ly': {
      'en': 'Please describe what\'s happening',
      'pt': 'Descreva aqui o que está acontecendo',
    },
    'pz53rnml': {
      'en': 'Submit',
      'pt': 'Enviar',
    },
  },
  // Component_report_content
  {
    'xu5ftu6a': {
      'en': 'Report a problem',
      'pt': 'Reportar um problema',
    },
    'jtam83d7': {
      'en': 'What\'s your concern with this content?',
      'pt': 'Qual o problema com esse conteúdo?',
    },
    'fu5s7s1s': {
      'en': 'The transcription is incorrect',
      'pt': 'A transcrição está incorreta',
    },
    '0uemrfbz': {
      'en': 'The transcription isn\'t in sync with the audio',
      'pt': 'A transcrição não está sincronizada com o áudio',
    },
    'ebxk8fm9': {
      'en': 'It\'s the wrong transcript',
      'pt': 'A transcrição está errada',
    },
    '2rnsdcyp': {
      'en': 'My concern isn\'t here',
      'pt': 'Outro problema',
    },
    'hpcfgg3z': {
      'en': '',
      'pt': '',
    },
    '73ppduke': {
      'en': 'Please describe what\'s happening',
      'pt': 'Descreva aqui o que está acontecendo',
    },
    'vk4qhmqy': {
      'en': 'Submit',
      'pt': 'Enviar',
    },
  },
  // PopupLogout
  {
    'od18lpvp': {
      'en': 'Are you sure?',
      'pt': 'Tem certeza?',
    },
    'c10q7g18': {
      'en': 'Are you sure you want to log out of your account?',
      'pt': 'Deseja mesmo sair da sua conta?',
    },
    'n12dtph5': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'xob0o7d8': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
  },
  // Miscellaneous
  {
    '7uodyol4': {
      'en': 'Home',
      'pt': 'Lar',
    },
    '2blz0xic': {
      'en': 'Button',
      'pt': 'Botão',
    },
    'm1yx4zqg': {
      'en':
          'The app needs access to your camera to set up the user\'s profile picture.',
      'pt':
          'O aplicativo precisa de acesso à sua câmera para configurar a foto do perfil do usuário.',
    },
    'owo4lksh': {
      'en':
          'The app needs access to your photo library to set up the user\'s profile picture.',
      'pt':
          'O aplicativo precisa de acesso à sua biblioteca de fotos para configurar a foto do perfil do usuário.',
    },
    'x9gee9x4': {
      'en':
          'The app needs access to your microphone to play audiobooks correctly.',
      'pt':
          'O aplicativo precisa de acesso ao seu microfone para reproduzir audiolivros corretamente.',
    },
    'xk5mbeyf': {
      'en':
          'The app needs access to your Alarm to control the player in background',
      'pt': '',
    },
    '1bc2lh00': {
      'en':
          'The app needs access to Foreground Service  to play audiobooks in background',
      'pt': '',
    },
    '5ip8yjte': {
      'en':
          'The app needs access to Wake Lock  to play audiobooks in background',
      'pt': '',
    },
    'cgdeqbcq': {
      'en': '',
      'pt': '',
    },
    'vd8al7xq': {
      'en': '',
      'pt': '',
    },
    'wxvhf1e1': {
      'en': '',
      'pt': '',
    },
    '4wxfzprm': {
      'en': '',
      'pt': '',
    },
    'j3tirtj0': {
      'en': '',
      'pt': '',
    },
    'dlaqkrcd': {
      'en': '',
      'pt': '',
    },
    'w1vjogjv': {
      'en': '',
      'pt': '',
    },
    '3spnp0fr': {
      'en': '',
      'pt': '',
    },
    'lpno7d5e': {
      'en': '',
      'pt': '',
    },
    'd10hkwjt': {
      'en': '',
      'pt': '',
    },
    'n0ooygdh': {
      'en': '',
      'pt': '',
    },
    '4jtxcp03': {
      'en': '',
      'pt': '',
    },
    'ymdnrgm0': {
      'en': '',
      'pt': '',
    },
    'rtx1yogz': {
      'en': '',
      'pt': '',
    },
    'bdhqkjts': {
      'en': '',
      'pt': '',
    },
    'x0izzxja': {
      'en': '',
      'pt': '',
    },
    '1wzxoaqb': {
      'en': '',
      'pt': '',
    },
    '3nsawfsw': {
      'en': '',
      'pt': '',
    },
    'et8yav5l': {
      'en': '',
      'pt': '',
    },
    'pogv3fbx': {
      'en': '',
      'pt': '',
    },
    'm8gl3aag': {
      'en': '',
      'pt': '',
    },
    'w1jakigj': {
      'en': '',
      'pt': '',
    },
    'wc75cb1x': {
      'en': '',
      'pt': '',
    },
    'b3rvj096': {
      'en': '',
      'pt': '',
    },
    'sbacd35j': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
