**free

ctl-opt dftactgrp(*no);

dcl-pi P3254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P1540.rpgleinc'

dcl-ds theTable extname('T1013') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1013 LIMIT 1;

theCharVar = 'Hello from P3254';
dsply theCharVar;
P825();
P1066();
P1540();
return;