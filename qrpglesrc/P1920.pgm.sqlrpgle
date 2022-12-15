**free

ctl-opt dftactgrp(*no);

dcl-pi P1920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P1309.rpgleinc'

dcl-ds theTable extname('T786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T786 LIMIT 1;

theCharVar = 'Hello from P1920';
dsply theCharVar;
P949();
P50();
P1309();
return;