**free

ctl-opt dftactgrp(*no);

dcl-pi P3841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2369.rpgleinc'
/copy 'qrpgleref/P2410.rpgleinc'
/copy 'qrpgleref/P2338.rpgleinc'

dcl-ds theTable extname('T791') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T791 LIMIT 1;

theCharVar = 'Hello from P3841';
dsply theCharVar;
P2369();
P2410();
P2338();
return;