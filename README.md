⚙️ Technical Stack
<table> <thead> <tr> <th>Layer</th> <th>Technology</th> <th>Purpose</th> <th>Key Features</th> </tr> </thead> <tbody> <tr> <td><strong>Presentation</strong></td> <td>Vue.js 3 + Vite</td> <td>Modern reactive user interface</td> <td>Composition API, Vue Router, Reactive state</td> </tr> <tr> <td><strong>Blockchain</strong></td> <td>Hedera JavaScript SDK</td> <td>Direct Hedera network interaction</td> <td>Token operations, Account management</td> </tr> <tr> <td><strong>Consensus</strong></td> <td>Hedera Hashgraph</td> <td>Distributed ledger consensus</td> <td>aBFT, Gossip protocol, DAG structure</td> </tr> <tr> <td><strong>Storage</strong></td> <td>IPFS via NFT.Storage</td> <td>Decentralized NFT metadata</td> <td>Content addressing, Permanent storage</td> </tr> <tr> <td><strong>Deployment</strong></td> <td>Docker + Docker Compose</td> <td>Containerized application</td> <td>Environment consistency, Easy deployment</td> </tr> </tbody> </table>
⚙️ Environment Configuration
🔧 Environment Variables Setup
<table> <thead> <tr> <th>Variable</th> <th>Required</th> <th>Description</th> <th>Example Value</th> </tr> </thead> <tbody> <tr> <td><code>VUE_APP_OPERATOR_ID</code></td> <td>✅ Required</td> <td>Your Hedera account ID from portal</td> <td><code>0.0.123456</code></td> </tr> <tr> <td><code>VUE_APP_OPERATOR_KEY</code></td> <td>✅ Required</td> <td>Your Hedera account private key</td> <td><code>302e0201...privatekey</code></td> </tr> <tr> <td><code>VUE_APP_NETWORK</code></td> <td>✅ Required</td> <td>Hedera network (testnet/mainnet)</td> <td><code>testnet</code></td> </tr> <tr> <td><code>VUE_APP_INITIAL_BALANCE</code></td> <td>🟡 Optional</td> <td>Initial demo account balance in ℏ</td> <td><code>100</code></td> </tr> <tr> <td><code>VUE_APP_MAX_QUERY_PAYMENT</code></td> <td>🟡 Optional</td> <td>Maximum query payment amount</td> <td><code>10</code></td> </tr> <tr> <td><code>VUE_APP_MAX_TX_FEE</code></td> <td>🟡 Optional</td> <td>Maximum transaction fee</td> <td><code>10</code></td> </tr> <tr> <td><code>VUE_APP_NFT_STORAGE_API_KEY</code></td> <td>🟡 Optional</td> <td>NFT.Storage API key for IPFS</td> <td><code>eyJ...api_key</code></td> </tr> </tbody> </table>
📋 Setup Checklist
<table> <thead> <tr> <th>Step</th> <th>Task</th> <th>Details</th> <th>Verification</th> </tr> </thead> <tbody> <tr> <td><strong>1</strong></td> <td>Hedera Account Setup</td> <td>Create account at portal.hedera.com</td> <td>Obtain Account ID and Private Key</td> </tr> <tr> <td><strong>2</strong></td> <td>Environment File</td> <td>Create <code>.env</code> from <code>.env.sample</code></td> <td>All required variables configured</td> </tr> <tr> <td><strong>3</strong></td> <td>IPFS Integration (Optional)</td> <td>Get API key from nft.storage</td> <td>NFT.Storage account created</td> </tr> <tr> <td><strong>4</strong></td> <td>Docker Installation</td> <td>Install Docker & Docker Compose</td> <td><code>docker --version</code> command works</td> </tr> </tbody> </table>
🐳 Deployment Options
🚀 Docker Deployment (Recommended)
<table> <thead> <tr> <th>Command</th> <th>Purpose</th> <th>Output</th> <th>Access URL</th> </tr> </thead> <tbody> <tr> <td><code>docker compose up --build</code></td> <td>Build and start application</td> <td>Containerized environment</td> <td>http://localhost:8080</td> </tr> <tr> <td><code>docker compose down</code></td> <td>Stop and remove containers</td> <td>Clean shutdown</td> <td>N/A</td> </tr> <tr> <td><code>docker compose logs</code></td> <td>View application logs</td> <td>Real-time debugging information</td> <td>N/A</td> </tr> </tbody> </table>
💻 Manual Development
<table> <thead> <tr> <th>Task</th> <th>Command</th> <th>Purpose</th> <th>Development URL</th> </tr> </thead> <tbody> <tr> <td><strong>Dependency Installation</strong></td> <td><code>yarn install</code></td> <td>Install project dependencies</td> <td>N/A</td> </tr> <tr> <td><strong>Development Server</strong></td> <td><code>yarn serve</code></td> <td>Start hot-reload development</td> <td>http://localhost:8080</td> </tr> <tr> <td><strong>Production Build</strong></td> <td><code>yarn build</code></td> <td>Create optimized production bundle</td> <td><code>dist/</code> directory</td> </tr> <tr> <td><strong>Code Quality</strong></td> <td><code>yarn lint</code></td> <td>Run ESLint code validation</td> <td>Code style report</td> </tr> </tbody> </table>
🌐 Token Data & IPFS Integration
🖼️ NFT Metadata Management
<table> <thead> <tr> <th>Component</th> <th>Location</th> <th>Format</th> <th>Purpose</th> </tr> </thead> <tbody> <tr> <td><strong>NFT Templates</strong></td> <td><code>/public/tokenTemplates.json</code></td> <td>JSON Schema</td> <td>Pre-configured NFT collections</td> </tr> <tr> <td><strong>Metadata Structure</strong></td> <td>IPFS JSON Objects</td> <td>Standard NFT Metadata</td> <td>Name, description, image, attributes</td> </tr> <tr> <td><strong>Content Addressing</strong></td> <td>IPFS CIDs</td> <td>Content Identifiers</td> <td>Immutable content references</td> </tr> <tr> <td><strong>Image Assets</strong></td> <td>IPFS Storage</td> <td>PNG, JPG, SVG</td> <td>Visual NFT representations</td> </tr> </tbody> </table>
🔗 IPFS Integration Flow
<table> <thead> <tr> <th>Step</th> <th>Action</th> <th>Technology</th> <th>Result</th> </tr> </thead> <tbody> <tr> <td><strong>1</strong></td> <td>User selects NFT template</td> <td>Vue.js Interface</td> <td>Metadata object prepared</td> </tr> <tr> <td><strong>2</strong></td> <td>Upload to IPFS</td> <td>NFT.Storage API</td> <td>Content Identifier (CID) generated</td> </tr> <tr> <td><strong>3</strong></td> <td>Create NFT on Hedera</td> <td>Hedera Token Service</td> <td>Token with IPFS metadata link</td> </tr> <tr> <td><strong>4</strong></td> <td>Verifiable Link</td> <td>On-chain CID reference</td> <td>Immutable NFT-content connection</td> </tr> </tbody> </table>
⚡ Example Workflow
🔄 End-to-End NFT Creation
<table> <thead> <tr> <th>Step</th> <th>Operation</th> <th>User Action</th> <th>Network Result</th> </tr> </thead> <tbody> <tr> <td><strong>1</strong></td> <td>Create NFT Collection</td> <td>Define supply, name, symbol, metadata template</td> <td>New token ID generated on Hedera</td> </tr> <tr> <td><strong>2</strong></td> <td>Mint NFT</td> <td>Upload image to IPFS, returns CID</td> <td>NFT minted with IPFS metadata link</td> </tr> <tr> <td><strong>3</strong></td> <td>Associate User Account</td> <td>Link user account to token ID</td> <td>Account authorized to hold the token</td> </tr> <tr> <td><strong>4</strong></td> <td>Transfer NFT</td> <td>Execute token transfer between accounts</td> <td>Instant finality with full traceability</td> </tr> </tbody> </table>
🧠 Key Technical Concepts
🔬 Hedera Technology Stack
<table> <thead> <tr> <th>Concept</th> <th>Technology</th> <th>Description</th> <th>Advantage</th> </tr> </thead> <tbody> <tr> <td><strong>Hashgraph Consensus</strong></td> <td>Gossip-about-Gossip</td> <td>Algorithm ensures fast, fair transaction ordering</td> <td>High throughput, low latency</td> </tr> <tr> <td><strong>HTS (Hedera Token Service)</strong></td> <td>Native Tokenization</td> <td>Provides tokenization without smart contracts</td> <td>Reduced complexity, higher security</td> </tr> <tr> <td><strong>Mirror Nodes</strong></td> <td>REST API Endpoints</td> <td>Allow real-time reading of ledger data</td> <td>Enhanced analytics and UI updates</td> </tr> <tr> <td><strong>aBFT Security</strong></td> <td>Byzantine Fault Tolerance</td> <td>Maximum resistance to malicious actors</td> <td>Enterprise-grade security</td> </tr> <tr> <td><strong>IPFS Integration</strong></td> <td>Content Addressing</td> <td>Decentralized NFT metadata storage</td> <td>Tamper-proof, permanent storage</td> </tr> </tbody> </table>
📊 Performance Metrics
⚡ Hedera Network Advantages
<table> <thead> <tr> <th>Metric</th> <th>Hedera Hashgraph</th> <th>Traditional Blockchain</th> <th>Advantage</th> </tr> </thead> <tbody> <tr> <td><strong>Transaction Finality</strong></td> <td>3-5 seconds</td> <td>10-60 minutes</td> <td>10-100x faster</td> </tr> <tr> <td><strong>Transactions per Second</strong></td> <td>10,000+ TPS</td> <td>5-100 TPS</td> <td>100-1000x scalability</td> </tr> <tr> <td><strong>Energy Consumption</strong></td> <td>Minimal</td> <td>High (Proof of Work)</td> <td>Environmentally sustainable</td> </tr> <tr> <td><strong>Transaction Cost</strong></td> <td>$0.0001 USD</td> <td>$1-50 USD</td> <td>1000x+ cost efficiency</td> </tr> <tr> <td><strong>Security Level</strong></td> <td>aBFT (Maximum)</td> <td>Probabilistic</td> <td>Mathematically proven security</td> </tr> </tbody> </table>
🧾 License & Compliance
📄 Project Information
<table> <thead> <tr> <th>Category</th> <th>Details</th> <th>Notes</th> </tr> </thead> <tbody> <tr> <td><strong>License</strong></td> <td>Apache License 2.0</td> <td>Open source with commercial-friendly terms</td> </tr> <tr> <td><strong>Intended Use</strong></td> <td>Educational & Demonstration</td> <td>Not for production financial applications</td> </tr> <tr> <td><strong>Network</strong></td> <td>Hedera Testnet Only</td> <td>Real ℏ required for mainnet deployment</td> </tr> <tr> <td><strong>Security Notice</strong></td> <td>Educational Purpose</td> <td>Use testnet accounts only</td> </tr> </tbody> </table>
👤 Developer Information
🎓 About the Developer
<table> <thead> <tr> <th>Category</th> <th>Details</th> <th>Focus Areas</th> </tr> </thead> <tbody> <tr> <td><strong>Developer</strong></td> <td>Tarek Ayari</td> <td>Software Engineering Student</td> </tr> <tr> <td><strong>Institution</strong></td> <td>ESPIT Tunis</td> <td>Higher Education in Technology</td> </tr> <tr> <td><strong>Specializations</strong></td> <td>Full-stack Development</td> <td>Vue.js, Blockchain, System Architecture</td> </tr> <tr> <td><strong>Expertise</strong></td> <td>Blockchain Integration</td> <td>Hedera Hashgraph, Tokenization, DLT</td> </tr> <tr> <td><strong>Professional Focus</strong></td> <td>Hedera Integrator</td> <td>Enterprise DLT solutions</td> </tr> </tbody> </table>
🎯 Project Vision
This Hedera Token Service NFT Demo bridges the gap between theoretical distributed ledger technology and practical tokenization implementation. By showcasing Hedera's enterprise-grade capabilities through an intuitive interface, we empower developers and businesses to explore the future of digital assets on a sustainable, high-performance platform.

🌟 Key Educational Outcomes
✅ Understanding Hashgraph Consensus

✅ Practical HTS Token Operations

✅ IPFS NFT Metadata Management

✅ Enterprise Tokenization Patterns

✅ Sustainable Blockchain Technology

🚀 Technology Demonstration
For Developers: Hands-on Hedera SDK experience

For Enterprises: Tokenization use case exploration

For Educators: Distributed ledger technology teaching tool

For Hedera Ecosystem: Community growth and developer onboarding

Built with ❤️ for the Hedera community by Tarek Ayari

<div align="center">
🔗 Essential Resources
Hedera Documentation

Hedera Token Service

Hedera Discord Community

NFT.Storage Documentation

Start Building on Hedera Today! 🚀

</div>
