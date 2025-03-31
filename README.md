# 📐 C Code Style Samples

A comparison of C code formatted with different `--style` options available in [clang-format](https://clang.llvm.org/docs/ClangFormat.html).

| Option                  | Max Line Length | `*` Location | Whitespace | Reference                                                                                                           |
| ----------------------- | --------------- | ------------ | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| [Chromium](#Chromium)   | 80 chars        | type side    | spaces     | [Chromium’s style guide](https://chromium.googlesource.com/chromium/src/+/refs/heads/main/styleguide/styleguide.md) |
| [GNU](#GNU)             | 79 chars        | value side   | spaces     | [GNU coding standards](https://www.gnu.org/prep/standards/standards.html)                                           |
| [Google](#Google)       | 80 chars        | type side    | spaces     | [Google’s C++ style guide](https://google.github.io/styleguide/cppguide.html)                                       |
| [LLVM](#LLVM)           | 80 chars        | value side   | spaces     | [LLVM coding standards](https://llvm.org/docs/CodingStandards.html)                                                 |
| [Microsoft](#Microsoft) | 120 chars       | value side   | tabs       | --                                                                                                                  |
| [Mozilla](#Mozilla)     | 80 chars        | type side    | spaces     | [Mozilla’s style guide](https://firefox-source-docs.mozilla.org/code-quality/coding-style/coding_style_cpp.html)    |
| [WebKit](#WebKit)       | --              | type side    | spaces     | [WebKit’s style guide](https://www.webkit.org/coding/coding-style.html)                                             |

<br>

## Chromium

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

static int really_long_function(int argument_a,
                                int argument_b,
                                int argument_c,
                                int argument_d,
                                int argument_e,
                                int argument_f,
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

## GNU

```c
#include <stdio.h>

// Short comment

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
// tempor incididunt ut labore et dolore magna aliqua

#define MAX_PLAYERS (4)

typedef enum
{
  Difficulty_easy,
  Difficulty_hard,
} Difficulty;

typedef struct
{
  const char *name;
  float position[3];
  int health;
} Player;

typedef struct
{
  Difficulty difficulty;
  Player players[MAX_PLAYERS];
  int player_count;
} Game;

typedef Player (*FindPlayerByNameFunc) (const char *name);

static int
really_long_function (int argument_a, int argument_b, int argument_c,
                      int argument_d, int argument_e, int argument_f,
                      int argument_g)
{
  return argument_a + argument_b + argument_c + argument_d + argument_e
         + argument_f + argument_g;
}

static void
play (const Game *game)
{

  int monsters = 0;
  switch (game->difficulty)
    {
    case Difficulty_easy:
      monsters = 5;
      break;
    case Difficulty_hard:
      monsters = 10;
      break;
    }

  for (int i = 0; i < game->player_count; i++)
    {
      const Player *player = &game->players[i];
      const int damage = monsters * 10;
      if (damage >= player->health)
        {
          printf ("%s died fighting %i monsters\n", player->name, monsters);
        }
      else
        {
          printf ("%s survived\n", player->name);
        }
    }
}

int
main ()
{

  const Player p1 = {
    .name = "Steve",
    .position = { 0.f, 0.f, 0.f },
    .health = 100,
  };

  const Game game = { .difficulty = Difficulty_easy,
                      .players = { p1 },
                      .player_count = 1 };

  play (&game);
}

```

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

## LLVM

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
  const char *name;
  float position[3];
  int health;
} Player;

typedef struct {
  Difficulty difficulty;
  Player players[MAX_PLAYERS];
  int player_count;
} Game;

typedef Player (*FindPlayerByNameFunc)(const char *name);

static int really_long_function(int argument_a, int argument_b, int argument_c,
                                int argument_d, int argument_e, int argument_f,
                                int argument_g) {
  return argument_a + argument_b + argument_c + argument_d + argument_e +
         argument_f + argument_g;
}

static void play(const Game *game) {

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
    const Player *player = &game->players[i];
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

## Microsoft

```c
#include <stdio.h>

// Short comment

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
// aliqua

#define MAX_PLAYERS (4)

typedef enum
{
    Difficulty_easy,
    Difficulty_hard,
} Difficulty;

typedef struct
{
    const char *name;
    float position[3];
    int health;
} Player;

typedef struct
{
    Difficulty difficulty;
    Player players[MAX_PLAYERS];
    int player_count;
} Game;

typedef Player (*FindPlayerByNameFunc)(const char *name);

static int really_long_function(int argument_a, int argument_b, int argument_c, int argument_d, int argument_e,
                                int argument_f, int argument_g)
{
    return argument_a + argument_b + argument_c + argument_d + argument_e + argument_f + argument_g;
}

static void play(const Game *game)
{

    int monsters = 0;
    switch (game->difficulty)
    {
    case Difficulty_easy:
        monsters = 5;
        break;
    case Difficulty_hard:
        monsters = 10;
        break;
    }

    for (int i = 0; i < game->player_count; i++)
    {
        const Player *player = &game->players[i];
        const int damage = monsters * 10;
        if (damage >= player->health)
        {
            printf("%s died fighting %i monsters\n", player->name, monsters);
        }
        else
        {
            printf("%s survived\n", player->name);
        }
    }
}

int main()
{

    const Player p1 = {
        .name = "Steve",
        .position = {0.f, 0.f, 0.f},
        .health = 100,
    };

    const Game game = {.difficulty = Difficulty_easy, .players = {p1}, .player_count = 1};

    play(&game);
}

```

## Mozilla

```c
#include <stdio.h>

// Short comment

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
// tempor incididunt ut labore et dolore magna aliqua

#define MAX_PLAYERS (4)

typedef enum
{
  Difficulty_easy,
  Difficulty_hard,
} Difficulty;

typedef struct
{
  const char* name;
  float position[3];
  int health;
} Player;

typedef struct
{
  Difficulty difficulty;
  Player players[MAX_PLAYERS];
  int player_count;
} Game;

typedef Player (*FindPlayerByNameFunc)(const char* name);

static int
really_long_function(int argument_a,
                     int argument_b,
                     int argument_c,
                     int argument_d,
                     int argument_e,
                     int argument_f,
                     int argument_g)
{
  return argument_a + argument_b + argument_c + argument_d + argument_e +
         argument_f + argument_g;
}

static void
play(const Game* game)
{

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

int
main()
{

  const Player p1 = {
    .name = "Steve",
    .position = { 0.f, 0.f, 0.f },
    .health = 100,
  };

  const Game game = { .difficulty = Difficulty_easy,
                      .players = { p1 },
                      .player_count = 1 };

  play(&game);
}

```

## WebKit

```c
#include <stdio.h>

// Short comment

// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua

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

static int really_long_function(int argument_a, int argument_b, int argument_c, int argument_d, int argument_e, int argument_f, int argument_g)
{
    return argument_a + argument_b + argument_c + argument_d + argument_e + argument_f + argument_g;
}

static void play(const Game* game)
{

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

int main()
{

    const Player p1 = {
        .name = "Steve",
        .position = { 0.f, 0.f, 0.f },
        .health = 100,
    };

    const Game game = {
        .difficulty = Difficulty_easy,
        .players = { p1 },
        .player_count = 1
    };

    play(&game);
}

```
