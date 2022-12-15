**free

ctl-opt dftactgrp(*no);

dcl-pi P2621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2097.rpgleinc'
/copy 'qrpgleref/P2006.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds theTable extname('T1810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1810 LIMIT 1;

theCharVar = 'Hello from P2621';
dsply theCharVar;
P2097();
P2006();
P537();
return;