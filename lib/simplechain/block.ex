defmodule Simplechain.Block do
  defstruct [:index, :previous_hash, :timestamp, :data, :hash]

  def first(data) do
    generate(0, "0", data)
  end

  def next(previous, data) do
    generate(previous.index + 1, previous.hash, data)
  end

  defp generate(index, previous_hash, data) do
    timestamp = DateTime.utc_now

    %__MODULE__{
      index: index,
      previous_hash: previous_hash,
      timestamp: timestamp,
      data: data,
      hash: compute_hash(data, 0, timestamp)
    }
  end

  defp calculate_hash(data) do
    :crypto.hash(:sha256, data) |> Base.encode16 |> String.downcase
  end

  defp compute_hash(data, nonce, timestamp) do
    hash = [data, nonce, timestamp] |> Enum.join |> calculate_hash

    case String.starts_with?(hash, "123") do
      true -> hash
      false -> compute_hash(data, nonce + 1, timestamp)
    end
  end
end
