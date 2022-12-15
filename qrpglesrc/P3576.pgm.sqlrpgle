**free

ctl-opt dftactgrp(*no);

dcl-pi P3576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3100.rpgleinc'
/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P2754.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P3576';
dsply theCharVar;
P3100();
P2274();
P2754();
return;