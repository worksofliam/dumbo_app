**free

ctl-opt dftactgrp(*no);

dcl-pi P1670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P974.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P1510.rpgleinc'

dcl-ds theTable extname('T1708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1708 LIMIT 1;

theCharVar = 'Hello from P1670';
dsply theCharVar;
P974();
P1251();
P1510();
return;