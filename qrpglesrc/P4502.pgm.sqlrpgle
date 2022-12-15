**free

ctl-opt dftactgrp(*no);

dcl-pi P4502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P2352.rpgleinc'
/copy 'qrpgleref/P2082.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P4502';
dsply theCharVar;
P11();
P2352();
P2082();
return;