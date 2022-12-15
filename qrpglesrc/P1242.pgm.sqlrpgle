**free

ctl-opt dftactgrp(*no);

dcl-pi P1242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T686') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T686 LIMIT 1;

theCharVar = 'Hello from P1242';
dsply theCharVar;
P301();
P1073();
P178();
return;