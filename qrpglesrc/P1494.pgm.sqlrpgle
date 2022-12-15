**free

ctl-opt dftactgrp(*no);

dcl-pi P1494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P1494';
dsply theCharVar;
P301();
P863();
P210();
return;