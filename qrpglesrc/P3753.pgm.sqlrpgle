**free

ctl-opt dftactgrp(*no);

dcl-pi P3753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3067.rpgleinc'
/copy 'qrpgleref/P1496.rpgleinc'
/copy 'qrpgleref/P1430.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P3753';
dsply theCharVar;
P3067();
P1496();
P1430();
return;