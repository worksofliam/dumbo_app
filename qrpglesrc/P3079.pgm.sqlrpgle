**free

ctl-opt dftactgrp(*no);

dcl-pi P3079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1572.rpgleinc'
/copy 'qrpgleref/P2986.rpgleinc'
/copy 'qrpgleref/P3062.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P3079';
dsply theCharVar;
P1572();
P2986();
P3062();
return;