**free

ctl-opt dftactgrp(*no);

dcl-pi P2344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P1530.rpgleinc'
/copy 'qrpgleref/P1447.rpgleinc'

dcl-ds theTable extname('T1338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1338 LIMIT 1;

theCharVar = 'Hello from P2344';
dsply theCharVar;
P486();
P1530();
P1447();
return;