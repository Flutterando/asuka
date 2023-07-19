## [2.2.0] - 19/07/2023.

- Adding Suport to Material Banner

### Example
```
const MaterialBanner(
  overflowAlignment: OverflowBarAlignment.start,
  backgroundColor: Colors.red,
  elevation: 1,
  content: AsukaContentWidget(
    icon: Icons.report,
    content: 'This is a Material Banner',
    actions: [],
    type: AsukaType.materialBanner,
  ),
  actions: [SizedBox.shrink()],
)
```
## [2.1.0] - 19/05/2023.

- Support for flutter 3.10

## [2.0.2] - 17/02/2023.

### Fix

- Remove deprecated symbols for flutter 3.7

### Added

- Added Cupertino Modal Popup
- Added Cupertino Dialog
- Width and Elevation parameter on AsukaSnackbar

## [2.0.1+1] - 29/07/2022.

### Changed
 
- Doc: Updated Readme.

## [2.0.1] - 29/07/2022.

### Changed

- Refactor: Asuka is now a singleton.

### Removed

- Removed imports with prefix asuka.

### Added

- Fix flutter version

## [1.0.4] - 22/07/2020.

- Fix bug in Channel Stable

## [1.0.3] - 28/06/2020.

- Added Overlay

## [1.0.2] - 18/06/2020.

- Fix [#1](https://github.com/Flutterando/asuka/issues/1)

## [1.0.0] - 06/06/2020.

- First release
