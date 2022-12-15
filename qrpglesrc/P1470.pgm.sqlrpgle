**free

ctl-opt dftactgrp(*no);

dcl-pi P1470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1296.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T1533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1533 LIMIT 1;

theCharVar = 'Hello from P1470';
dsply theCharVar;
P1296();
P642();
P17();
return;