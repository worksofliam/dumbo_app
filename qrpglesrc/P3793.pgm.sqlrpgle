**free

ctl-opt dftactgrp(*no);

dcl-pi P3793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3713.rpgleinc'
/copy 'qrpgleref/P2974.rpgleinc'
/copy 'qrpgleref/P3610.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P3793';
dsply theCharVar;
P3713();
P2974();
P3610();
return;