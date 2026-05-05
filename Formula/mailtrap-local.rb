# Auto-generated placeholder. Goreleaser overwrites this file on every
# tagged release of mailtrap-local — do not edit by hand. The first real
# release tag will populate `url`, `sha256`, and the `bottle do` block.
#
# Until then, this stub fails `brew install` deliberately so a botched
# release can't silently install a 0.0.0 binary on testers.
class MailtrapLocal < Formula
  desc "Local email catcher: SMTP + Web UI + JSON API in one binary"
  homepage "https://github.com/mailtrap/mailtrap-local"
  license "MIT"

  url "https://github.com/mailtrap/mailtrap-local/releases/download/v0.0.0/mailtrap-local_0.0.0_darwin_arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "0.0.0"

  def install
    bin.install "mailtrap-local"
    bin.install_symlink "mailtrap-local" => "mailtrap-sendmail"
  end

  service do
    run [opt_bin/"mailtrap-local",
         "--http-listen", "127.0.0.1:3550",
         "--smtp-listen", "127.0.0.1:3535",
         "--db", "#{var}/mailtrap-local/db.sqlite3"]
    keep_alive true
    log_path "#{var}/log/mailtrap-local.log"
    error_log_path "#{var}/log/mailtrap-local.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailtrap-local --version")
  end
end
