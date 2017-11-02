require 'minitest/autorun'
require_relative 'transcription.rb'

class TranscriptionTest < Minitest::Test

  def test_rna_complement_of_cytosine_is_guanine
    assert_equal 'G', Transcription.of_dna('C')
  end

  def test_rna_complement_of_guanine_is_cytosine
    skip "Delete me if previous test passed"
    assert_equal 'C', Transcription.of_dna('G')
  end

  def test_rna_complement_of_thymine_is_adenine
    skip "Delete me if previous test passed"
    assert_equal 'A', Transcription.of_dna('T')
  end

  def test_rna_complement_of_adenine_is_uracil
    skip "Delete me if previous test passed"
    assert_equal 'U', Transcription.of_dna('A')
  end

  def test_dna_complement_of_cytosine_is_guanine
    skip "Delete me if previous test passed"
    assert_equal 'G', Transcription.of_rna('C')
  end

  def test_dna_complement_of_guanine_is_cytosine
    skip "Delete me if previous test passed"
    assert_equal 'C', Transcription.of_rna('G')
  end

  def test_dna_complement_of_uracil_is_adenine
    skip "Delete me if previous test passed"
    assert_equal 'A', Transcription.of_rna('U')
  end

  def test_dna_complement_of_adenine_is_thymine
    skip "Delete me if previous test passed"
    assert_equal 'T', Transcription.of_rna('A')
  end

  def test_rna_complement
    skip "Delete me if previous test passed"
    assert_equal 'UGCACCAGAAUU', Complement.of_dna('ACGTGGTCTTAA')
  end

  def test_dna_complement
    skip "Delete me if previous test passed"
    assert_equal 'ACTTGGGCTGTAC', Complement.of_rna('UGAACCCGACAUG')
  end

  def test_dna_raises_argument_error_on_completely_invalid_input
    skip "Delete me if previous test passed"
    assert_raises(ArgumentError) { Complement.of_dna('XXX') }
  end

  def test_rna_raises_argument_error_on_partially_invalid_input
    skip "Delete me if previous test passed"
    assert_raises(ArgumentError) { Complement.of_rna('UGAAXXXGACAUG') }
  end
end
