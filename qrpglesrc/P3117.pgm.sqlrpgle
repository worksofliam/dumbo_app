**free

ctl-opt dftactgrp(*no);

dcl-pi P3117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P1786.rpgleinc'
/copy 'qrpgleref/P2652.rpgleinc'

dcl-ds theTable extname('T306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T306 LIMIT 1;

theCharVar = 'Hello from P3117';
dsply theCharVar;
P12();
P1786();
P2652();
return;