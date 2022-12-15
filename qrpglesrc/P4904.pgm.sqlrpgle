**free

ctl-opt dftactgrp(*no);

dcl-pi P4904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'

dcl-ds theTable extname('T290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T290 LIMIT 1;

theCharVar = 'Hello from P4904';
dsply theCharVar;
P54();
P744();
P1089();
return;