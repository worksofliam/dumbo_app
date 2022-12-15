**free

ctl-opt dftactgrp(*no);

dcl-pi P1214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1047.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P1214';
dsply theCharVar;
P1047();
P656();
P601();
return;