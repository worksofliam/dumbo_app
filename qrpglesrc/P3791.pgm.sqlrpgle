**free

ctl-opt dftactgrp(*no);

dcl-pi P3791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1355.rpgleinc'
/copy 'qrpgleref/P2129.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds theTable extname('T1286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1286 LIMIT 1;

theCharVar = 'Hello from P3791';
dsply theCharVar;
P1355();
P2129();
P425();
return;