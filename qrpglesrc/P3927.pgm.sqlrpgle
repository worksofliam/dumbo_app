**free

ctl-opt dftactgrp(*no);

dcl-pi P3927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2831.rpgleinc'
/copy 'qrpgleref/P2689.rpgleinc'
/copy 'qrpgleref/P2228.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P3927';
dsply theCharVar;
P2831();
P2689();
P2228();
return;