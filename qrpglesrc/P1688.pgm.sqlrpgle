**free

ctl-opt dftactgrp(*no);

dcl-pi P1688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1493.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'

dcl-ds theTable extname('T730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T730 LIMIT 1;

theCharVar = 'Hello from P1688';
dsply theCharVar;
P1493();
P445();
P963();
return;