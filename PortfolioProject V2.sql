-- CLEANING DATA IN SQL QUERIES


SELECT *
FROM PortfolioProject..NashvilleHousing

-- Standardize Date Format

SELECT SaleDateConverted, CONVERT(Date, SaleDate)
From PortfolioProject..NashvilleHousing 

Update PortfolioProject..NashvilleHousing
SET SaleDate = CONVERT(Date, SaleDate)

ALTER TABLE PortfolioProject..NashvilleHousing
Add SaleDateConverted Date;

Update PortfolioProject..NashvilleHousing
SET SaleDateConverted = CONVERT(Date, SaleDate)



----------------------------------------------------------

-- Populate Property Address Data


SELECT *
from PortfolioProject..NashvilleHousing
Where PropertyAddress is null
order by ParcelID

SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress,b.PropertyAddress)
from PortfolioProject..NashvilleHousing a
join PortfolioProject..NashvilleHousing b
	on a.ParcelID = b.ParcelID
	and a.[UniqueID ] <> b.[UniqueID ]
where a.PropertyAddress is null

Update a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
FROM PortfolioProject..NashvilleHousing a
JOIN PortfolioProject..NashvilleHousing b
	on a.ParcelID = b.ParcelID
	and a.[UniqueID ] <> b.[UniqueID ]
where a.PropertyAddress is null

-------------------------------------------------------

--Breaking out Address into individual Columns (Address, City, State)



SELECT PropertyAddress
from PortfolioProject..NashvilleHousing
--Where PropertyAddress is null
--order by ParcelID




SELECT
Substring(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1) as Address,
Substring(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress)) as State
FROM PortfolioProject..NashvilleHousing

ALTER TABLE PortfolioProject..NashvilleHousing
Add PropertySplitAddress nvarchar(255);

Update PortfolioProject..NashvilleHousing
SET PropertySplitAddress = Substring(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1)

ALTER TABLE PortfolioProject..NashvilleHousing
Add PropertyCity nvarchar(255);

Update PortfolioProject..NashvilleHousing
SET PropertyCity = Substring(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress))






SELECT *
FROM PortfolioProject..NashvilleHousing

SELECT OwnerAddress
from PortfolioProject..NashvilleHousing

SELECT
PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1)
from PortfolioProject..NashvilleHousing


ALTER TABLE PortfolioProject..NashvilleHousing
Add OwnerSplitAddress nvarchar(255);

Update PortfolioProject..NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 3)

ALTER TABLE PortfolioProject..NashvilleHousing
Add OwnerSplitCity nvarchar(255);

Update PortfolioProject..NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 2)

ALTER TABLE PortfolioProject..NashvilleHousing
Add OwnerSplitState nvarchar(255);

Update PortfolioProject..NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.'), 1)



--------------------------------------------------------------------------

--Change Y and N to Yes and No in "Sold as Vacant" field


SELECT Distinct(SoldAsVacant), Count(SoldAsVacant)
FROM PortfolioProject..NashvilleHousing
Group by SoldAsVacant
order by 2



Select SoldAsVacant
, CASE	When SoldAsVacant = 'Y' THEN 'Yes'
		When SoldAsVacant = 'N' THEN 'No'
		ELSE SoldAsVacant
		END
FROM PortfolioProject..NashvilleHousing

update NashvilleHousing
SET SoldAsVacant = CASE	When SoldAsVacant = 'Y' THEN 'Yes'
						When SoldAsVacant = 'N' THEN 'No'
						ELSE SoldAsVacant
END
FROM PortfolioProject..NashvilleHousing




--------------------------------------------------------------------------

-- Remove Duplicates


SELECT *
FROM PortfolioProject..NashvilleHousing


WITH RowNumCTE as(
SELECT *,
	ROW_NUMBER() OVER (
	PARTITION By ParcelID,
				PropertyAddress,
				SalePrice,
				SaleDate,
				LegalReference
				ORDER BY
					UniqueID
					) row_num
FROM PortfolioProject..NashvilleHousing
--order by ParcelID
)
SELECT *
FROM RowNumCTE
where row_num > 1
ORDER by propertyaddress




WITH RowNumCTE as(
SELECT *,
	ROW_NUMBER() OVER (
	PARTITION By ParcelID,
				PropertyAddress,
				SalePrice,
				SaleDate,
				LegalReference
				ORDER BY
					UniqueID
					) row_num
FROM PortfolioProject..NashvilleHousing
--order by ParcelID
)
DELETE
FROM RowNumCTE
where row_num > 1
--order by PropertyAddress




-------------------------------------------------------------------------------------

--Delete Unused Columns



SELECT *
FROM PortfolioProject..NashvilleHousing

ALTER TABLE PortfolioProject..NashvilleHousing
DROP COLUMN OwnerAddress, PropertyAddress, SaleDate