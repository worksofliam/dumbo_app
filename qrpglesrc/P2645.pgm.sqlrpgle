**free

ctl-opt dftactgrp(*no);

dcl-pi P2645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2458.rpgleinc'
/copy 'qrpgleref/P1729.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P2645';
dsply theCharVar;
P2458();
P1729();
P994();
return;