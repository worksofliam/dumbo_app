**free

ctl-opt dftactgrp(*no);

dcl-pi P3250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P2482.rpgleinc'
/copy 'qrpgleref/P1369.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P3250';
dsply theCharVar;
P35();
P2482();
P1369();
return;