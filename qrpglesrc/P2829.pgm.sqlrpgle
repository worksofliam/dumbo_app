**free

ctl-opt dftactgrp(*no);

dcl-pi P2829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P2368.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'

dcl-ds theTable extname('T1027') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1027 LIMIT 1;

theCharVar = 'Hello from P2829';
dsply theCharVar;
P147();
P2368();
P967();
return;