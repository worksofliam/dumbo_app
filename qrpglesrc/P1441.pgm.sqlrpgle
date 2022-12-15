**free

ctl-opt dftactgrp(*no);

dcl-pi P1441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P1441';
dsply theCharVar;
P1194();
P429();
P1055();
return;