**free

ctl-opt dftactgrp(*no);

dcl-pi P1753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P1503.rpgleinc'

dcl-ds theTable extname('T1740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1740 LIMIT 1;

theCharVar = 'Hello from P1753';
dsply theCharVar;
P14();
P896();
P1503();
return;