**free

ctl-opt dftactgrp(*no);

dcl-pi P4101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3850.rpgleinc'
/copy 'qrpgleref/P1652.rpgleinc'
/copy 'qrpgleref/P2495.rpgleinc'

dcl-ds theTable extname('T585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T585 LIMIT 1;

theCharVar = 'Hello from P4101';
dsply theCharVar;
P3850();
P1652();
P2495();
return;