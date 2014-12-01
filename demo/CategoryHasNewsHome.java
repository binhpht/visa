// default package
// Generated Nov 21, 2014 9:23:55 PM by Hibernate Tools 3.4.0.CR1

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

/**
 * Home object for domain model class CategoryHasNews.
 * @see .CategoryHasNews
 * @author Hibernate Tools
 */
public class CategoryHasNewsHome {

	private static final Log log = LogFactory.getLog(CategoryHasNewsHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext()
					.lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException(
					"Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(CategoryHasNews transientInstance) {
		log.debug("persisting CategoryHasNews instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(CategoryHasNews instance) {
		log.debug("attaching dirty CategoryHasNews instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CategoryHasNews instance) {
		log.debug("attaching clean CategoryHasNews instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(CategoryHasNews persistentInstance) {
		log.debug("deleting CategoryHasNews instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public CategoryHasNews merge(CategoryHasNews detachedInstance) {
		log.debug("merging CategoryHasNews instance");
		try {
			CategoryHasNews result = (CategoryHasNews) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public CategoryHasNews findById(CategoryHasNewsId id) {
		log.debug("getting CategoryHasNews instance with id: " + id);
		try {
			CategoryHasNews instance = (CategoryHasNews) sessionFactory
					.getCurrentSession().get("CategoryHasNews", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(CategoryHasNews instance) {
		log.debug("finding CategoryHasNews instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("CategoryHasNews")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
