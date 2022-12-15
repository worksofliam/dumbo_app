**free

ctl-opt dftactgrp(*no);

dcl-pi P2698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2402.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'

dcl-ds theTable extname('T239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T239 LIMIT 1;

theCharVar = 'Hello from P2698';
dsply theCharVar;
P2402();
P262();
P431();
return;