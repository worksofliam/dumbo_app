**free

ctl-opt dftactgrp(*no);

dcl-pi P5155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3145.rpgleinc'
/copy 'qrpgleref/P3667.rpgleinc'
/copy 'qrpgleref/P4314.rpgleinc'

dcl-ds theTable extname('T1295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1295 LIMIT 1;

theCharVar = 'Hello from P5155';
dsply theCharVar;
P3145();
P3667();
P4314();
return;