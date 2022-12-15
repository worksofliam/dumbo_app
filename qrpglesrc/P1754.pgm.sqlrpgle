**free

ctl-opt dftactgrp(*no);

dcl-pi P1754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'

dcl-ds theTable extname('T1873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1873 LIMIT 1;

theCharVar = 'Hello from P1754';
dsply theCharVar;
P870();
P530();
P1183();
return;