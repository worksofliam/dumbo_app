**free

ctl-opt dftactgrp(*no);

dcl-pi P2034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P1856.rpgleinc'

dcl-ds theTable extname('T422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T422 LIMIT 1;

theCharVar = 'Hello from P2034';
dsply theCharVar;
P437();
P365();
P1856();
return;