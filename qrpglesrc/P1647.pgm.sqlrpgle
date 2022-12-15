**free

ctl-opt dftactgrp(*no);

dcl-pi P1647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'

dcl-ds theTable extname('T589') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T589 LIMIT 1;

theCharVar = 'Hello from P1647';
dsply theCharVar;
P1208();
P859();
P1035();
return;