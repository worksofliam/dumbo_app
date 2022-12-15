**free

ctl-opt dftactgrp(*no);

dcl-pi P4048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2587.rpgleinc'
/copy 'qrpgleref/P1679.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P4048';
dsply theCharVar;
P2587();
P1679();
P923();
return;