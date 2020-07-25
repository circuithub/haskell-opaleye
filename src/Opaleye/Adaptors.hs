-- We have the following groups. Groups could be merged into one.
--
-- - p (Column a) (Column a)
--   Not SumProfunctor
--   Not SqlType a
--   - Binaryspec
--   - IfPP
--
-- - p (Column a) (Column a)
--   Not SumProfunctor
--   Is SqlType a
--   - Valuesspec
--
-- - p (Column a) (Column a)
--   Is SumProfunctor
--   Not SqlType a
--   - Distinctspec
--   - Unpackspec
--
-- - p (Column a) b
--   - EqPP
--
-- - p a (Column b)
--   Is SqlType b
--   - Nullspec

module Opaleye.Adaptors
  (
    -- * Binaryspec
    Binaryspec,
    binaryspecMaybeFields,
    -- * Distinctspec
    Distinctspec,
    distinctspecMaybeFields,
    -- * EqPP
    EqPP,
    -- * IfPP
    IfPP,
    ifPPMaybeFields,
    -- * FromFields
    FromFields,
    fromFieldsMaybeFields,
    -- * Nullspec
    Nullspec,
    nullspecField,
    nullspecMaybeFields,
    nullspecList,
    nullspecEitherLeft,
    nullspecEitherRight,
    -- * ToFields
    ToFields,
    toFieldsMaybeFields,
    -- * Unpackspec
    Unpackspec,
    unpackspecField,
    unpackspecMaybeFields,
    -- * Updater
    Updater,
    -- * Valuesspec
    ValuesspecSafe,
    valuesspecField,
    valuesspecMaybeFields,
    -- * WithNulls
    WithNulls,
  )
where

import Opaleye.Internal.Unpackspec
import Opaleye.Internal.Binary
import Opaleye.Internal.Manipulation
import Opaleye.Internal.Operators
import Opaleye.Internal.MaybeFields

import Opaleye.Distinct
import Opaleye.ToFields
import Opaleye.MaybeFields
import Opaleye.RunSelect
import Opaleye.Values