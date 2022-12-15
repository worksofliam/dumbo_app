**free

ctl-opt dftactgrp(*no);

dcl-pi P2312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'

dcl-ds theTable extname('T1706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1706 LIMIT 1;

theCharVar = 'Hello from P2312';
dsply theCharVar;
P721();
P1161();
return;