**free

ctl-opt dftactgrp(*no);

dcl-pi P1344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T279') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T279 LIMIT 1;

theCharVar = 'Hello from P1344';
dsply theCharVar;
P303();
P649();
P50();
return;