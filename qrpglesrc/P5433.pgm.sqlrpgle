**free

ctl-opt dftactgrp(*no);

dcl-pi P5433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4680.rpgleinc'
/copy 'qrpgleref/P2045.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds theTable extname('T799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T799 LIMIT 1;

theCharVar = 'Hello from P5433';
dsply theCharVar;
P4680();
P2045();
P208();
return;