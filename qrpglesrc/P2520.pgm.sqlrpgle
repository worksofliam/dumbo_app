**free

ctl-opt dftactgrp(*no);

dcl-pi P2520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P1253.rpgleinc'
/copy 'qrpgleref/P2269.rpgleinc'

dcl-ds theTable extname('T1255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1255 LIMIT 1;

theCharVar = 'Hello from P2520';
dsply theCharVar;
P1468();
P1253();
P2269();
return;