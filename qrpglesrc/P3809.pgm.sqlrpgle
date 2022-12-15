**free

ctl-opt dftactgrp(*no);

dcl-pi P3809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P1470.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'

dcl-ds theTable extname('T1437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1437 LIMIT 1;

theCharVar = 'Hello from P3809';
dsply theCharVar;
P981();
P1470();
P2054();
return;