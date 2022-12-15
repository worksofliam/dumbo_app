**free

ctl-opt dftactgrp(*no);

dcl-pi P4168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P2035.rpgleinc'
/copy 'qrpgleref/P1821.rpgleinc'

dcl-ds theTable extname('T1697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1697 LIMIT 1;

theCharVar = 'Hello from P4168';
dsply theCharVar;
P421();
P2035();
P1821();
return;