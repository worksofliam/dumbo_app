**free

ctl-opt dftactgrp(*no);

dcl-pi P1787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P909.rpgleinc'
/copy 'qrpgleref/P1379.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds theTable extname('T1456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1456 LIMIT 1;

theCharVar = 'Hello from P1787';
dsply theCharVar;
P909();
P1379();
P1402();
return;