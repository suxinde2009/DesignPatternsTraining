/**
 * The MIT License
 * Copyright (c) 2014 Ilkka Seppälä
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package com.iluwatar.caching;

/**
 *
 * The Caching pattern describes how to avoid expensive re-acquisition of resources by not releasing
 * the resources immediately after their use. The resources retain their identity, are kept in some
 * fast-access storage, and are re-used to avoid having to acquire them again. There are three main
 * caching strategies/techniques in this pattern; each with their own pros and cons. They are:
 * <code>write-through</code> which writes data to the cache and DB in a single transaction,
 * <code>write-around</code> which writes data immediately into the DB instead of the cache, and
 * <code>write-behind</code> which writes data into the cache initially whilst the data is only
 * written into the DB when the cache is full. The <code>read-through</code> strategy is also
 * included in the mentioned three strategies -- returns data from the cache to the caller <b>if</b>
 * it exists <b>else</b> queries from DB and stores it into the cache for future use. These
 * strategies determine when the data in the cache should be written back to the backing store (i.e.
 * Database) and help keep both data sources synchronized/up-to-date. This pattern can improve
 * performance and also helps to maintain consistency between data held in the cache and the data in
 * the underlying data store.
 * <p>
 * In this example, the user account ({@link UserAccount}) entity is used as the underlying
 * application data. The cache itself is implemented as an internal (Java) data structure. It adopts
 * a Least-Recently-Used (LRU) strategy for evicting data from itself when its full. The three
 * strategies are individually tested. The testing of the cache is restricted towards saving and
 * querying of user accounts from the underlying data store ( {@link DbManager}). The main class (
 * {@link App} is not aware of the underlying mechanics of the application (i.e. save and query) and
 * whether the data is coming from the cache or the DB (i.e. separation of concern). The AppManager
 * ({@link AppManager}) handles the transaction of data to-and-from the underlying data store
 * (depending on the preferred caching policy/strategy).
 *
 * <i>App --> AppManager --> CacheStore/LRUCache/CachingPolicy --> DBManager</i>
 * </p>
 *
 * @see CacheStore
 * @See LRUCache
 * @see CachingPolicy
 *
 */
public class App {

  /**
   * Program entry point
   *
   * @param args command line args
   */
  public static void main(String[] args) {
    AppManager.initDb(false); // VirtualDB (instead of MongoDB) was used in running the JUnit tests
                              // and the App class to avoid Maven compilation errors. Set flag to
                              // true to run the tests with MongoDB (provided that MongoDB is
                              // installed and socket connection is open).
    AppManager.initCacheCapacity(3);
    App app = new App();
    app.useReadAndWriteThroughStrategy();
    app.useReadThroughAndWriteAroundStrategy();
    app.useReadThroughAndWriteBehindStrategy();
  }

  /**
   * Read-through and write-through
   */
  public void useReadAndWriteThroughStrategy() {
    System.out.println("# CachingPolicy.THROUGH");
    AppManager.initCachingPolicy(CachingPolicy.THROUGH);

    UserAccount userAccount1 = new UserAccount("001", "John", "He is a boy.");

    AppManager.save(userAccount1);
    System.out.println(AppManager.printCacheContent());
    AppManager.find("001");
    AppManager.find("001");
  }

  /**
   * Read-through and write-around
   */
  public void useReadThroughAndWriteAroundStrategy() {
    System.out.println("# CachingPolicy.AROUND");
    AppManager.initCachingPolicy(CachingPolicy.AROUND);

    UserAccount userAccount2 = new UserAccount("002", "Jane", "She is a girl.");

    AppManager.save(userAccount2);
    System.out.println(AppManager.printCacheContent());
    AppManager.find("002");
    System.out.println(AppManager.printCacheContent());
    userAccount2 = AppManager.find("002");
    userAccount2.setUserName("Jane G.");
    AppManager.save(userAccount2);
    System.out.println(AppManager.printCacheContent());
    AppManager.find("002");
    System.out.println(AppManager.printCacheContent());
    AppManager.find("002");
  }

  /**
   * Read-through and write-behind
   */
  public void useReadThroughAndWriteBehindStrategy() {
    System.out.println("# CachingPolicy.BEHIND");
    AppManager.initCachingPolicy(CachingPolicy.BEHIND);

    UserAccount userAccount3 = new UserAccount("003", "Adam", "He likes food.");
    UserAccount userAccount4 = new UserAccount("004", "Rita", "She hates cats.");
    UserAccount userAccount5 = new UserAccount("005", "Isaac", "He is allergic to mustard.");

    AppManager.save(userAccount3);
    AppManager.save(userAccount4);
    AppManager.save(userAccount5);
    System.out.println(AppManager.printCacheContent());
    AppManager.find("003");
    System.out.println(AppManager.printCacheContent());
    UserAccount userAccount6 = new UserAccount("006", "Yasha", "She is an only child.");
    AppManager.save(userAccount6);
    System.out.println(AppManager.printCacheContent());
    AppManager.find("004");
    System.out.println(AppManager.printCacheContent());
  }
}
