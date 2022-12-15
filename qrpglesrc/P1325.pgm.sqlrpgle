**free

ctl-opt dftactgrp(*no);

dcl-pi P1325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'

dcl-ds theTable extname('T1167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1167 LIMIT 1;

theCharVar = 'Hello from P1325';
dsply theCharVar;
P274();
P1055();
P967();
return;