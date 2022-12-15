**free

ctl-opt dftactgrp(*no);

dcl-pi P2592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P2351.rpgleinc'
/copy 'qrpgleref/P2341.rpgleinc'

dcl-ds theTable extname('T174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T174 LIMIT 1;

theCharVar = 'Hello from P2592';
dsply theCharVar;
P797();
P2351();
P2341();
return;