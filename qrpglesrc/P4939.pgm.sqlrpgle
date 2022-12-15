**free

ctl-opt dftactgrp(*no);

dcl-pi P4939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P1979.rpgleinc'
/copy 'qrpgleref/P4473.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P4939';
dsply theCharVar;
P301();
P1979();
P4473();
return;