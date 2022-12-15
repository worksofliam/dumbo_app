**free

ctl-opt dftactgrp(*no);

dcl-pi P1228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1025.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds theTable extname('T386') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T386 LIMIT 1;

theCharVar = 'Hello from P1228';
dsply theCharVar;
P1185();
P1025();
P402();
return;