**free

ctl-opt dftactgrp(*no);

dcl-pi P2597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1806.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T365') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T365 LIMIT 1;

theCharVar = 'Hello from P2597';
dsply theCharVar;
P1806();
P77();
P3();
return;