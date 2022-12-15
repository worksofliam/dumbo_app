**free

ctl-opt dftactgrp(*no);

dcl-pi P3294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2910.rpgleinc'
/copy 'qrpgleref/P1497.rpgleinc'
/copy 'qrpgleref/P1826.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P3294';
dsply theCharVar;
P2910();
P1497();
P1826();
return;