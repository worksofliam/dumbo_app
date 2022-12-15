**free

ctl-opt dftactgrp(*no);

dcl-pi P1265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P1052.rpgleinc'

dcl-ds theTable extname('T1070') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1070 LIMIT 1;

theCharVar = 'Hello from P1265';
dsply theCharVar;
P839();
P114();
P1052();
return;