**free

ctl-opt dftactgrp(*no);

dcl-pi P2692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1895.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'

dcl-ds theTable extname('T857') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T857 LIMIT 1;

theCharVar = 'Hello from P2692';
dsply theCharVar;
P1895();
P613();
P1404();
return;