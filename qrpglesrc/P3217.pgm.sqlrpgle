**free

ctl-opt dftactgrp(*no);

dcl-pi P3217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2016.rpgleinc'
/copy 'qrpgleref/P2868.rpgleinc'
/copy 'qrpgleref/P1934.rpgleinc'

dcl-ds theTable extname('T539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T539 LIMIT 1;

theCharVar = 'Hello from P3217';
dsply theCharVar;
P2016();
P2868();
P1934();
return;