# flutter_mvp_project

MVP Architecture About

## MVP

The MVP divides an application into three layers: Model, View, and Presenter.
The presenter acts upon the model and the view. It retrieves data from repositories (the model), and formats it for display in the view
 In MVP View and Presenter are completely decoupled and communicate each other by the interfaces. Because of decoupling of MVP that is easy to mock data for unit testing.