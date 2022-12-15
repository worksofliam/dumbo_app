**free

ctl-opt dftactgrp(*no);

dcl-pi P1832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds theTable extname('T101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T101 LIMIT 1;

theCharVar = 'Hello from P1832';
dsply theCharVar;
P46();
P193();
P339();
return;