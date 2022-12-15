**free

ctl-opt dftactgrp(*no);

dcl-pi P3977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2526.rpgleinc'
/copy 'qrpgleref/P1486.rpgleinc'
/copy 'qrpgleref/P3832.rpgleinc'

dcl-ds theTable extname('T876') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T876 LIMIT 1;

theCharVar = 'Hello from P3977';
dsply theCharVar;
P2526();
P1486();
P3832();
return;