**free

ctl-opt dftactgrp(*no);

dcl-pi P992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P992';
dsply theCharVar;
P767();
P934();
P571();
return;