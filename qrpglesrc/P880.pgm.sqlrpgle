**free

ctl-opt dftactgrp(*no);

dcl-pi P880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'

dcl-ds theTable extname('T1630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1630 LIMIT 1;

theCharVar = 'Hello from P880';
dsply theCharVar;
P310();
P270();
P630();
return;