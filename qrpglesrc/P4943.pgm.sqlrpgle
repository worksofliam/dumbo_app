**free

ctl-opt dftactgrp(*no);

dcl-pi P4943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4436.rpgleinc'
/copy 'qrpgleref/P3265.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'

dcl-ds theTable extname('T1630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1630 LIMIT 1;

theCharVar = 'Hello from P4943';
dsply theCharVar;
P4436();
P3265();
P2199();
return;