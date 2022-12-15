**free

ctl-opt dftactgrp(*no);

dcl-pi P2458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2344.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P1831.rpgleinc'

dcl-ds theTable extname('T1532') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1532 LIMIT 1;

theCharVar = 'Hello from P2458';
dsply theCharVar;
P2344();
P320();
P1831();
return;