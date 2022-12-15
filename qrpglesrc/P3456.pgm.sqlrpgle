**free

ctl-opt dftactgrp(*no);

dcl-pi P3456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P2704.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P3456';
dsply theCharVar;
P1122();
P1146();
P2704();
return;