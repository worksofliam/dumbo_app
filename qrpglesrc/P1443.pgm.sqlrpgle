**free

ctl-opt dftactgrp(*no);

dcl-pi P1443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1320 LIMIT 1;

theCharVar = 'Hello from P1443';
dsply theCharVar;
P105();
P491();
P28();
return;