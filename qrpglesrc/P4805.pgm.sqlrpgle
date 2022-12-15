**free

ctl-opt dftactgrp(*no);

dcl-pi P4805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1061.rpgleinc'
/copy 'qrpgleref/P1695.rpgleinc'
/copy 'qrpgleref/P4072.rpgleinc'

dcl-ds theTable extname('T577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T577 LIMIT 1;

theCharVar = 'Hello from P4805';
dsply theCharVar;
P1061();
P1695();
P4072();
return;