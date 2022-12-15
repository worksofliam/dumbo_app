**free

ctl-opt dftactgrp(*no);

dcl-pi P1190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds theTable extname('T1185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1185 LIMIT 1;

theCharVar = 'Hello from P1190';
dsply theCharVar;
P863();
P487();
P375();
return;