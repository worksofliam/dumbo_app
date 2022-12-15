**free

ctl-opt dftactgrp(*no);

dcl-pi P4137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2357.rpgleinc'
/copy 'qrpgleref/P3969.rpgleinc'
/copy 'qrpgleref/P1946.rpgleinc'

dcl-ds theTable extname('T1517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1517 LIMIT 1;

theCharVar = 'Hello from P4137';
dsply theCharVar;
P2357();
P3969();
P1946();
return;