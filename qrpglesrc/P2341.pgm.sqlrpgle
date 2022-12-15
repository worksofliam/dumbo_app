**free

ctl-opt dftactgrp(*no);

dcl-pi P2341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P998.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P2341';
dsply theCharVar;
P998();
P2044();
P100();
return;