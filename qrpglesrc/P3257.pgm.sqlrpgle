**free

ctl-opt dftactgrp(*no);

dcl-pi P3257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3145.rpgleinc'
/copy 'qrpgleref/P1450.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'

dcl-ds theTable extname('T1031') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1031 LIMIT 1;

theCharVar = 'Hello from P3257';
dsply theCharVar;
P3145();
P1450();
P824();
return;