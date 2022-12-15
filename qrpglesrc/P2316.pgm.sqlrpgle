**free

ctl-opt dftactgrp(*no);

dcl-pi P2316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1390.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds theTable extname('T924') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T924 LIMIT 1;

theCharVar = 'Hello from P2316';
dsply theCharVar;
P1390();
P873();
P420();
return;