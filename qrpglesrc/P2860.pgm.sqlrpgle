**free

ctl-opt dftactgrp(*no);

dcl-pi P2860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds theTable extname('T1253') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1253 LIMIT 1;

theCharVar = 'Hello from P2860';
dsply theCharVar;
P483();
P1859();
P157();
return;