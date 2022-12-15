**free

ctl-opt dftactgrp(*no);

dcl-pi P2788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2719.rpgleinc'
/copy 'qrpgleref/P2511.rpgleinc'
/copy 'qrpgleref/P1623.rpgleinc'

dcl-ds theTable extname('T951') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T951 LIMIT 1;

theCharVar = 'Hello from P2788';
dsply theCharVar;
P2719();
P2511();
P1623();
return;