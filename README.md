# ⚡ C Style Samples

A comparison of the different style options offered by [clang-format](https://clang.llvm.org/docs/ClangFormat.html)

---

| Option     | Line Count | Reference                                                                                                           |
| ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| `Chromium` | 43         | [Chromium’s style guide](https://chromium.googlesource.com/chromium/src/+/refs/heads/main/styleguide/styleguide.md) |
| `LLVM`     | 69         | [LLVM coding standards](https://llvm.org/docs/CodingStandards.html)                                                 |

## Google

```c
#include <stdio.h>

// Short comment

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
// tempor incididunt ut labore et dolore magna aliqua

#define MAX_PLAYERS (4)

typedef enum {
  Difficulty_easy,
  Difficulty_hard,
} Difficulty;

typedef struct {
  const char* name;
  float position[3];
  int health;
} Player;

typedef struct {
  Difficulty difficulty;
  Player players[MAX_PLAYERS];
  int player_count;
} Game;

typedef Player (*FindPlayerByNameFunc)(const char* name);

static int really_long_function(int argument_a, int argument_b, int argument_c,
                                int argument_d, int argument_e, int argument_f,
                                int argument_g) {
  return argument_a + argument_b + argument_c + argument_d + argument_e +
         argument_f + argument_g;
}

static void play(const Game* game) {
  int monsters = 0;
  switch (game->difficulty) {
    case Difficulty_easy:
      monsters = 5;
      break;
    case Difficulty_hard:
      monsters = 10;
      break;
  }

  for (int i = 0; i < game->player_count; i++) {
    const Player* player = &game->players[i];
    const int damage = monsters * 10;
    if (damage >= player->health) {
      printf("%s died fighting %i monsters\n", player->name, monsters);
    } else {
      printf("%s survived\n", player->name);
    }
  }
}

int main() {
  const Player p1 = {
      .name = "Steve",
      .position = {0.f, 0.f, 0.f},
      .health = 100,
  };

  const Game game = {
      .difficulty = Difficulty_easy, .players = {p1}, .player_count = 1};

  play(&game);
}
```

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/Chromium.c#L1-L73

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/GNU.c#L1-L86

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/Google.c#L1-L69

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/LLVM.c#L1-L71

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/Microsoft.c#L1-L79

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/Mozilla.c#L1-L85

https://github.com/aaron9000/c-style-samples/blob/5932ba132b0a25f9afc669748fd5cdaf823ef091/formatted/WebKit.c#L1-L73
