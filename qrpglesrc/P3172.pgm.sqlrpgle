**free

ctl-opt dftactgrp(*no);

dcl-pi P3172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1965.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P1354.rpgleinc'

dcl-ds theTable extname('T765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T765 LIMIT 1;

theCharVar = 'Hello from P3172';
dsply theCharVar;
P1965();
P21();
P1354();
return;