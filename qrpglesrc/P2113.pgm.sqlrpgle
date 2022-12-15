**free

ctl-opt dftactgrp(*no);

dcl-pi P2113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P2113';
dsply theCharVar;
P494();
P451();
P718();
return;