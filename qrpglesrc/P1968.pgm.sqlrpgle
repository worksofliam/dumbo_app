**free

ctl-opt dftactgrp(*no);

dcl-pi P1968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'
/copy 'qrpgleref/P1758.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P1968';
dsply theCharVar;
P1414();
P1119();
P1758();
return;