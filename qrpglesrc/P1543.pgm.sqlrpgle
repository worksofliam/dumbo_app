**free

ctl-opt dftactgrp(*no);

dcl-pi P1543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T871 LIMIT 1;

theCharVar = 'Hello from P1543';
dsply theCharVar;
P1183();
P870();
P288();
return;