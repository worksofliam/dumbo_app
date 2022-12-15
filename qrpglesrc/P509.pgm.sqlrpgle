**free

ctl-opt dftactgrp(*no);

dcl-pi P509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P509';
dsply theCharVar;
P493();
P12();
P193();
return;