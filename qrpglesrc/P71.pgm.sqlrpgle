**free

ctl-opt dftactgrp(*no);

dcl-pi P71;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T76') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T76 LIMIT 1;

theCharVar = 'Hello from P71';
dsply theCharVar;
P3();
P50();
P5();
return;