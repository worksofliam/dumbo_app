**free

ctl-opt dftactgrp(*no);

dcl-pi P1103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P956.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P1103';
dsply theCharVar;
P448();
P956();
P13();
return;