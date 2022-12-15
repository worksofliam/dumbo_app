**free

ctl-opt dftactgrp(*no);

dcl-pi P3161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P2091.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'

dcl-ds theTable extname('T1071') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1071 LIMIT 1;

theCharVar = 'Hello from P3161';
dsply theCharVar;
P241();
P2091();
P1220();
return;