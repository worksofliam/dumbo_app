**free

ctl-opt dftactgrp(*no);

dcl-pi P1247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P1247';
dsply theCharVar;
P1114();
P385();
P572();
return;