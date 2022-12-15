**free

ctl-opt dftactgrp(*no);

dcl-pi P1193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1093.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'

dcl-ds theTable extname('T1197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1197 LIMIT 1;

theCharVar = 'Hello from P1193';
dsply theCharVar;
P1093();
P401();
P1078();
return;