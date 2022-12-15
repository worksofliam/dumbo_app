**free

ctl-opt dftactgrp(*no);

dcl-pi P1128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P1128';
dsply theCharVar;
P410();
P132();
P112();
return;