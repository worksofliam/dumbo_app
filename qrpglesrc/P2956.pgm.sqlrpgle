**free

ctl-opt dftactgrp(*no);

dcl-pi P2956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'
/copy 'qrpgleref/P1329.rpgleinc'

dcl-ds theTable extname('T299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T299 LIMIT 1;

theCharVar = 'Hello from P2956';
dsply theCharVar;
P1350();
P1859();
P1329();
return;