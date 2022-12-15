**free

ctl-opt dftactgrp(*no);

dcl-pi P4741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2643.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'
/copy 'qrpgleref/P942.rpgleinc'

dcl-ds theTable extname('T1002') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1002 LIMIT 1;

theCharVar = 'Hello from P4741';
dsply theCharVar;
P2643();
P3033();
P942();
return;