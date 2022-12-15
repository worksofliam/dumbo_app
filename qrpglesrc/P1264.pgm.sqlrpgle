**free

ctl-opt dftactgrp(*no);

dcl-pi P1264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'

dcl-ds theTable extname('T471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T471 LIMIT 1;

theCharVar = 'Hello from P1264';
dsply theCharVar;
P855();
P1();
P600();
return;