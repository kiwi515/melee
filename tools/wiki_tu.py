#!/usr/bin/env python3

import argparse
import json
import sys
from pathlib import Path

import humanfriendly


def write(args):
    if args.report_path == "-":
        data = json.load(sys.stdin)
    else:
        path = Path(args.report_path)
        data = json.load(path.open("r"))
    print(
        """# Translation Units

Edit this page and fill in your own username to assign yourself to a file.

File|Matched|Total|%|:grey_question:|Assignee<br>Discord|Assignee<br>GitHub
-|-|-|-|-|-|-"""
    )
    for unit in data["units"] or []:

        def friendly_size(key: str) -> str:
            return f"`{humanfriendly.format_number(unit[key] or 0)}`"

        # Strip "main/" by splitting on "/" and recombining
        file = "/".join((unit["name"] or "/").split("/")[1:])
        # Link to source file
        file = f"[`{file}`](../../tree/master/src/{file}.c)"

        matched = f"{friendly_size('matched_code')}"
        total = f"{friendly_size('total_code')}"
        percent = f"`{humanfriendly.round_number(unit['fuzzy_match_percent'] or 0)}%`"
        linked = ":heavy_check_mark:" if unit["complete"] else ":x:"
        print(
            f"{file}|{matched}|{total}|{percent}|{linked}"
            "|<!-- Discord -->|<!-- GitHub -->"
        )


def main():
    parser = argparse.ArgumentParser(
        description="Generates and parses the wiki's list of translation units."
    )
    subparsers = parser.add_subparsers(dest="subcommand")

    parser_write = subparsers.add_parser("write", help="Write JSON data to a file.")
    parser_write.add_argument(
        "report_path",
        metavar="REPORT",
        nargs="?",
        const="-",
        default=None,
        type=str,
        help="Path to the JSON report generated by objdiff-cli.",
    )
    parser_write.set_defaults(func=write)

    args = parser.parse_args()
    args.func(args)


if __name__ == "__main__":
    main()
