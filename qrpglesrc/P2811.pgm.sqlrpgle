**free

ctl-opt dftactgrp(*no);

dcl-pi P2811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P2811';
dsply theCharVar;
P444();
P50();
P1175();
return;