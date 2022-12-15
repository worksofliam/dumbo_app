**free

ctl-opt dftactgrp(*no);

dcl-pi P1290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'

dcl-ds theTable extname('T24') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T24 LIMIT 1;

theCharVar = 'Hello from P1290';
dsply theCharVar;
P1103();
P991();
P514();
return;