**free

ctl-opt dftactgrp(*no);

dcl-pi P4728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3528.rpgleinc'
/copy 'qrpgleref/P4653.rpgleinc'
/copy 'qrpgleref/P1227.rpgleinc'

dcl-ds theTable extname('T794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T794 LIMIT 1;

theCharVar = 'Hello from P4728';
dsply theCharVar;
P3528();
P4653();
P1227();
return;