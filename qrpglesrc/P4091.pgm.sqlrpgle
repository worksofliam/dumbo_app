**free

ctl-opt dftactgrp(*no);

dcl-pi P4091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1361.rpgleinc'
/copy 'qrpgleref/P3294.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'

dcl-ds theTable extname('T1557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1557 LIMIT 1;

theCharVar = 'Hello from P4091';
dsply theCharVar;
P1361();
P3294();
P1183();
return;