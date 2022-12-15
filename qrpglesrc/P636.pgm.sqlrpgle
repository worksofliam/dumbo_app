**free

ctl-opt dftactgrp(*no);

dcl-pi P636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'

dcl-ds theTable extname('T1130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1130 LIMIT 1;

theCharVar = 'Hello from P636';
dsply theCharVar;
P202();
P227();
P497();
return;