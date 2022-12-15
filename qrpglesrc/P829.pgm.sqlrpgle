**free

ctl-opt dftactgrp(*no);

dcl-pi P829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P829';
dsply theCharVar;
P607();
P73();
P440();
return;