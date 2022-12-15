**free

ctl-opt dftactgrp(*no);

dcl-pi P2673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P1361.rpgleinc'
/copy 'qrpgleref/P1833.rpgleinc'

dcl-ds theTable extname('T1410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1410 LIMIT 1;

theCharVar = 'Hello from P2673';
dsply theCharVar;
P1251();
P1361();
P1833();
return;