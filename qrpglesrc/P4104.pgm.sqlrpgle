**free

ctl-opt dftactgrp(*no);

dcl-pi P4104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1391.rpgleinc'
/copy 'qrpgleref/P2469.rpgleinc'
/copy 'qrpgleref/P4021.rpgleinc'

dcl-ds theTable extname('T1638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1638 LIMIT 1;

theCharVar = 'Hello from P4104';
dsply theCharVar;
P1391();
P2469();
P4021();
return;