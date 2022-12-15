**free

ctl-opt dftactgrp(*no);

dcl-pi P5013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P3878.rpgleinc'
/copy 'qrpgleref/P2411.rpgleinc'

dcl-ds theTable extname('T1630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1630 LIMIT 1;

theCharVar = 'Hello from P5013';
dsply theCharVar;
P1504();
P3878();
P2411();
return;