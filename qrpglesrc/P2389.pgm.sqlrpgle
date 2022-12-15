**free

ctl-opt dftactgrp(*no);

dcl-pi P2389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2059.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P2389';
dsply theCharVar;
P2059();
P1169();
P962();
return;