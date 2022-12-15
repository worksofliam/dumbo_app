**free

ctl-opt dftactgrp(*no);

dcl-pi P1139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P1139';
dsply theCharVar;
P943();
P666();
P984();
return;