**free

ctl-opt dftactgrp(*no);

dcl-pi P55;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P55';
dsply theCharVar;
P44();
P0();
P33();
return;