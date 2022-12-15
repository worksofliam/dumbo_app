**free

ctl-opt dftactgrp(*no);

dcl-pi P1926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P1720.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds theTable extname('T763') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T763 LIMIT 1;

theCharVar = 'Hello from P1926';
dsply theCharVar;
P461();
P1720();
P874();
return;