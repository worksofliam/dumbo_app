**free

ctl-opt dftactgrp(*no);

dcl-pi P818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds theTable extname('T295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T295 LIMIT 1;

theCharVar = 'Hello from P818';
dsply theCharVar;
P435();
P768();
P339();
return;