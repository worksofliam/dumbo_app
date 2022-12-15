**free

ctl-opt dftactgrp(*no);

dcl-pi P3162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P1480.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'

dcl-ds theTable extname('T617') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T617 LIMIT 1;

theCharVar = 'Hello from P3162';
dsply theCharVar;
P847();
P1480();
P390();
return;