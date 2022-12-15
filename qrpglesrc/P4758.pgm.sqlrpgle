**free

ctl-opt dftactgrp(*no);

dcl-pi P4758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4200.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P4382.rpgleinc'

dcl-ds theTable extname('T540') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T540 LIMIT 1;

theCharVar = 'Hello from P4758';
dsply theCharVar;
P4200();
P30();
P4382();
return;