**free

ctl-opt dftactgrp(*no);

dcl-pi P1291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P1291';
dsply theCharVar;
P366();
P607();
P939();
return;