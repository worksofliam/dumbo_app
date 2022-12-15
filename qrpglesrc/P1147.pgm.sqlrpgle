**free

ctl-opt dftactgrp(*no);

dcl-pi P1147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P998.rpgleinc'
/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P1147';
dsply theCharVar;
P998();
P1095();
P487();
return;