import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/user_search/user_search_cubit.dart';
import 'package:petsitting/features/create_mission/widgets/user_info_text.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';
import 'package:searchfield/searchfield.dart';

class UserSearchField extends HookWidget {
  final List<UsersUser> users;
  final Function(UsersUser) onUserSelected;

  const UserSearchField({
    super.key,
    required this.users,
    required this.onUserSelected,
  });

  @override
  Widget build(BuildContext context) {
    final selectedUser = useState<UsersUser?>(null);
    final filteredUsers = useState<List<UsersUser>>([]);
    final focus = useFocusNode();
    final theme = Theme.of(context);
    final hasFocus = useState(false);

    useEffect(() {
      filteredUsers.value = users;
      return null;
    }, [users]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FocusScope(
          child: Focus(
            onFocusChange: (value) {
              hasFocus.value = value;
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: hasFocus.value ? theme.primaryColor : theme.dividerColor,
                  width: 1.5,
                ),
              ),
              child: SearchField<UsersUser>(
                initialValue: selectedUser.value?.toSearchFieldListItem(),
                suggestions: filteredUsers.value.map((user) => user.toSearchFieldListItem()).toList(),
                suggestionState: filteredUsers.value.isNotEmpty ? Suggestion.expand : Suggestion.hidden,
                textInputAction: TextInputAction.next,
                hint: 'Rechercher un client',
                focusNode: focus,
                searchInputDecoration: SearchInputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  hintStyle: theme.textTheme.bodyLarge!.copyWith(fontSize: 14, color: theme.hintColor),
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
                suggestionsDecoration: SuggestionDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: theme.dividerColor, width: 1.5),
                ),
                maxSuggestionsInViewPort: 5,
                itemHeight: 50,
                onSearchTextChanged: (query) {
                  filteredUsers.value = context.read<UserSearchCubit>().filterUsers(query);
                  return filteredUsers.value.map((user) => user.toSearchFieldListItem()).toList();
                },
                onSuggestionTap: (suggestion) {
                  focus.unfocus();
                  final user = suggestion.item;
                  if (user != null) {
                    selectedUser.value = user;
                    onUserSelected(user);
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

extension on UsersUser {
  SearchFieldListItem<UsersUser> toSearchFieldListItem() {
    return SearchFieldListItem<UsersUser>(
      '$firstname $lastname - $email',
      item: this,
      child: UserInfoText(
        firstname: firstname!,
        lastname: lastname!,
        email: email!,
      ),
    );
  }
}
