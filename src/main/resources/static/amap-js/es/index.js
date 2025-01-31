import { version } from "./constants";
import Loader from "./loaders/Loader";
import LoaderUtil from "./loaders/LoaderUtil";
import ScriptLoader from "./loaders/ScriptLoader";
import AMapLoader from "./loaders/AMapLoader";
import AMapUILoader from "./loaders/AMapUILoader";
import LocaLoader from "./loaders/LocaLoader";
import SubwayLoader from "./loaders/SubwayLoader";
import LoadQueue from "./LoadQueue";
var AMapJS = {
  version: version,
  Loader: Loader,
  LoaderUtil: LoaderUtil,
  ScriptLoader: ScriptLoader,
  AMapLoader: AMapLoader,
  AMapUILoader: AMapUILoader,
  LocaLoader: LocaLoader,
  SubwayLoader: SubwayLoader,
  LoadQueue: LoadQueue
};
/**
 * Export
 */

export { version, Loader, LoaderUtil, ScriptLoader, AMapLoader, AMapUILoader, LocaLoader, SubwayLoader, LoadQueue };
export default AMapJS;