**free

ctl-opt dftactgrp(*no);

dcl-pi P2762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P1322.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P2762';
dsply theCharVar;
P1157();
P479();
P1322();
return;