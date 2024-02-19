# Swift Architecture Templates

Swift Architecture Templates is a collection of Swift project templates featuring various architectural patterns designed to assist in the development of new features.

## Templates

The following templates are available:

### MVVM (Model-View-ViewModel)
There are two types to choose from: Normal or TableView. Choosing the TableView type will create and set up a tableView on `FeatureViewController`.
* FeatureViewController
* FeatureViewModel

### VIPER (View-Interactor-Presenter-Entity-Router)
There are two types to choose from: Normal or TableView. Choosing the TableView type will create and set up a tableView on `FeatureViewController`.

* FeatureViewInterface protocol
* FeatureInteractorInterface protocol
* FeaturePresenterInterface protocol
* FeatureRouterInterface protocol
* FeatureViewController class
* FeatureInteractor class
* FeaturePresenter class
* FeatureEntity enum: enum as a namespace
* FeatureRouter class

### Basic VIPER protocols
You need to create these in the beginning when you use the VIPER template to create the basic protocols.

* ViewInterface protocol
* InteractorInterface protocol
* PresenterInterface protocol
* RouterInterface protocol

## Usage

1. Download this repository
2. Drag the `Architecture Templates` folder to the `~/Library/Developer/Xcode/Templates` path
3. Open the Xcode
4. New File...
5. Find `Architecture Templates` section.
