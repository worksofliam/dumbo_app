**free

ctl-opt dftactgrp(*no);

dcl-pi P2948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T1073') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1073 LIMIT 1;

theCharVar = 'Hello from P2948';
dsply theCharVar;
P328();
P47();
P601();
return;