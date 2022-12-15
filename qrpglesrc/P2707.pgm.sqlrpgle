**free

ctl-opt dftactgrp(*no);

dcl-pi P2707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P608.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P2398.rpgleinc'

dcl-ds theTable extname('T1060') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1060 LIMIT 1;

theCharVar = 'Hello from P2707';
dsply theCharVar;
P608();
P1();
P2398();
return;