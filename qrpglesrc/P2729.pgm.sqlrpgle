**free

ctl-opt dftactgrp(*no);

dcl-pi P2729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2493.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P2699.rpgleinc'

dcl-ds theTable extname('T1239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1239 LIMIT 1;

theCharVar = 'Hello from P2729';
dsply theCharVar;
P2493();
P1177();
P2699();
return;