import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:hi_flutter/hi_flutter.dart';
import 'package:intl/intl.dart';

class FormatRoute extends StatefulWidget {
  const FormatRoute({Key? key}) : super(key: key);

  @override
  State<FormatRoute> createState() => _FormatRouteState();
}

class _FormatRouteState extends State<FormatRoute> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('123456789'),
              Text(NumberFormat('0,000').format(123456789)),
            ],
          ),
        ),
        GestureDetector(
          onTap: _doTap,
          child: Container(
            height: 50,
            color: Colors.grey,
            child: Text('打印完整日志'),
          ),
        ),
        GestureDetector(
          onTap: _doReg,
          child: Container(
            height: 50,
            color: Colors.grey,
            child: Text('正则表达式'),
          ),
        ),
      ],
    );
  }

  void _doTap() {
    var str = '{"id":76934279,"node_id":"MDEwOlJlcG9zaXRvcnk3NjkzNDI3OQ==","name":"QMUI_iOS","full_name":"Tencent/QMUI_iOS","private":false,"owner":{"login":"Tencent","id":18461506,"node_id":"MDEyOk9yZ2FuaXphdGlvbjE4NDYxNTA2","avatar_url":"https://avatars.githubusercontent.com/u/18461506?v=4","gravatar_id":"","url":"https://api.github.com/users/Tencent","html_url":"https://github.com/Tencent","followers_url":"https://api.github.com/users/Tencent/followers","following_url":"https://api.github.com/users/Tencent/following{/other_user}","gists_url":"https://api.github.com/users/Tencent/gists{/gist_id}","starred_url":"https://api.github.com/users/Tencent/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/Tencent/subscriptions","organizations_url":"https://api.github.com/users/Tencent/orgs","repos_url":"https://api.github.com/users/Tencent/repos","events_url":"https://api.github.com/users/Tencent/events{/privacy}","received_events_url":"https://api.github.com/users/Tencent/received_events","type":"Organization","site_admin":false},"html_url":"https://github.com/Tencent/QMUI_iOS","description":"QMUI iOS——致力于提高项目 UI 开发效率的解决方案","fork":false,"url":"https://api.github.com/repos/Tencent/QMUI_iOS","forks_url":"https://api.github.com/repos/Tencent/QMUI_iOS/forks","keys_url":"https://api.github.com/repos/Tencent/QMUI_iOS/keys{/key_id}","collaborators_url":"https://api.github.com/repos/Tencent/QMUI_iOS/collaborators{/collaborator}","teams_url":"https://api.github.com/repos/Tencent/QMUI_iOS/teams","hooks_url":"https://api.github.com/repos/Tencent/QMUI_iOS/hooks","issue_events_url":"https://api.github.com/repos/Tencent/QMUI_iOS/issues/events{/number}","events_url":"https://api.github.com/repos/Tencent/QMUI_iOS/events","assignees_url":"https://api.github.com/repos/Tencent/QMUI_iOS/assignees{/user}","branches_url":"https://api.github.com/repos/Tencent/QMUI_iOS/branches{/branch}","tags_url":"https://api.github.com/repos/Tencent/QMUI_iOS/tags","blobs_url":"https://api.github.com/repos/Tencent/QMUI_iOS/git/blobs{/sha}","git_tags_url":"https://api.github.com/repos/Tencent/QMUI_iOS/git/tags{/sha}","git_refs_url":"https://api.github.com/repos/Tencent/QMUI_iOS/git/refs{/sha}","trees_url":"https://api.github.com/repos/Tencent/QMUI_iOS/git/trees{/sha}","statuses_url":"https://api.github.com/repos/Tencent/QMUI_iOS/statuses/{sha}","languages_url":"https://api.github.com/repos/Tencent/QMUI_iOS/languages","stargazers_url":"https://api.github.com/repos/Tencent/QMUI_iOS/stargazers","contributors_url":"https://api.github.com/repos/Tencent/QMUI_iOS/contributors","subscribers_url":"https://api.github.com/repos/Tencent/QMUI_iOS/subscribers","subscription_url":"https://api.github.com/repos/Tencent/QMUI_iOS/subscription","commits_url":"https://api.github.com/repos/Tencent/QMUI_iOS/commits{/sha}","git_commits_url":"https://api.github.com/repos/Tencent/QMUI_iOS/git/commits{/sha}","comments_url":"https://api.github.com/repos/Tencent/QMUI_iOS/comments{/number}","issue_comment_url":"https://api.github.com/repos/Tencent/QMUI_iOS/issues/comments{/number}","contents_url":"https://api.github.com/repos/Tencent/QMUI_iOS/contents/{+path}","compare_url":"https://api.github.com/repos/Tencent/QMUI_iOS/compare/{base}...{head}","merges_url":"https://api.github.com/repos/Tencent/QMUI_iOS/merges","archive_url":"https://api.github.com/repos/Tencent/QMUI_iOS/{archive_format}{/ref}","downloads_url":"https://api.github.com/repos/Tencent/QMUI_iOS/downloads","issues_url":"https://api.github.com/repos/Tencent/QMUI_iOS/issues{/number}","pulls_url":"https://api.github.com/repos/Tencent/QMUI_iOS/pulls{/number}","milestones_url":"https://api.github.com/repos/Tencent/QMUI_iOS/milestones{/number}","notifications_url":"https://api.github.com/repos/Tencent/QMUI_iOS/notifications{?since,all,participating}","labels_url":"https://api.github.com/repos/Tencent/QMUI_iOS/labels{/name}","releases_url":"https://api.github.com/repos/Tencent/QMUI_iOS/releases{/id}","deployments_url":"https://api.github.com/repos/Tencent/QMUI_iOS/deployments","created_at":"2016-12-20T07:34:32Z","updated_at":"2023-01-19T06:11:49Z","pushed_at":"2022-12-15T07:11:46Z","git_url":"git://github.com/Tencent/QMUI_iOS.git","ssh_url":"git@github.com:Tencent/QMUI_iOS.git","clone_url":"https://github.com/Tencent/QMUI_iOS.git","svn_url":"https://github.com/Tencent/QMUI_iOS","homepage":"http://qmuiteam.com/ios","size":7467,"stargazers_count":6778,"watchers_count":6778,"language":"Objective-C","has_issues":true,"has_projects":true,"has_downloads":true,"has_wiki":true,"has_pages":false,"has_discussions":true,"forks_count":1334,"mirror_url":null,"archived":false,"disabled":false,"open_issues_count":107,"license":{"key":"other","name":"Other","spdx_id":"NOASSERTION","url":null,"node_id":"MDc6TGljZW5zZTA="},"allow_forking":true,"is_template":false,"web_commit_signoff_required":false,"topics":["ios","ios-ui","ui-components","uikit"],"visibility":"public","forks":1334,"open_issues":107,"watchers":6778,"default_branch":"master","permissions":{"admin":false,"maintain":false,"push":false,"triage":false,"pull":true},"temp_clone_token":"","organization":{"login":"Tencent","id":18461506,"node_id":"MDEyOk9yZ2FuaXphdGlvbjE4NDYxNTA2","avatar_url":"https://avatars.githubusercontent.com/u/18461506?v=4","gravatar_id":"","url":"https://api.github.com/users/Tencent","html_url":"https://github.com/Tencent","followers_url":"https://api.github.com/users/Tencent/followers","following_url":"https://api.github.com/users/Tencent/following{/other_user}","gists_url":"https://api.github.com/users/Tencent/gists{/gist_id}","starred_url":"https://api.github.com/users/Tencent/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/Tencent/subscriptions","organizations_url":"https://api.github.com/users/Tencent/orgs","repos_url":"https://api.github.com/users/Tencent/repos","events_url":"https://api.github.com/users/Tencent/events{/privacy}","received_events_url":"https://api.github.com/users/Tencent/received_events","type":"Organization","site_admin":false},"network_count":1334,"subscribers_count":159}';
    log('str: $str');
  }

  void _doReg() {
    // var rp = new RegExp(r'\d+');
    var rp = new RegExp(r'live 1');
    var string = 'llamas live 15 to 20 yelive 1ars';
    if (string.contains(rp)) {
      log('包含了');
    }
    var matches = rp.allMatches(string).toList();
    matches.forEach((m) {
      log('看看每个找到的项目: ${m.groupCount}');
      log('group0: ${m.group(0)}');
      for (int i = 0; i < m.groupCount; i++) {
        var item = m.group(i);
        log('值: $item');
      }
    });

    var exedOut = string.replaceAll(rp, 'XX');
    log(exedOut);
  }
}


// class ConsoleOutput extends LogOutput {
//   @override
//   void output(OutputEvent event) {
//     // event.lines.forEach(printWrapped);
//     log(event.lines.join(""));
//   }
//
//   void printWrapped(String text) {
//     final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
//     pattern.allMatches(text).forEach((match) => print(match.group(0)));
//   }
//
//   // This works too.
//   void printWrapped2(String text) => debugPrint(text, wrapWidth: 1024);
// }