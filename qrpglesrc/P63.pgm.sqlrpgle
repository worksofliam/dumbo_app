**free

ctl-opt dftactgrp(*no);

dcl-pi P63;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T1394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1394 LIMIT 1;

theCharVar = 'Hello from P63';
dsply theCharVar;
P24();
P33();
P26();
return;