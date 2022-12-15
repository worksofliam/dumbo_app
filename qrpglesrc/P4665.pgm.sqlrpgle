**free

ctl-opt dftactgrp(*no);

dcl-pi P4665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1464.rpgleinc'
/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P4223.rpgleinc'

dcl-ds theTable extname('T1866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1866 LIMIT 1;

theCharVar = 'Hello from P4665';
dsply theCharVar;
P1464();
P2058();
P4223();
return;