**free

ctl-opt dftactgrp(*no);

dcl-pi P2980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2457.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P2650.rpgleinc'

dcl-ds theTable extname('T1056') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1056 LIMIT 1;

theCharVar = 'Hello from P2980';
dsply theCharVar;
P2457();
P635();
P2650();
return;