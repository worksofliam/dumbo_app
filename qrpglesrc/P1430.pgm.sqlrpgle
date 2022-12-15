**free

ctl-opt dftactgrp(*no);

dcl-pi P1430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T1226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1226 LIMIT 1;

theCharVar = 'Hello from P1430';
dsply theCharVar;
P755();
P995();
P1042();
return;