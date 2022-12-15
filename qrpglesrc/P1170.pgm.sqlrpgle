**free

ctl-opt dftactgrp(*no);

dcl-pi P1170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1057.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds theTable extname('T378') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T378 LIMIT 1;

theCharVar = 'Hello from P1170';
dsply theCharVar;
P1057();
P40();
P624();
return;