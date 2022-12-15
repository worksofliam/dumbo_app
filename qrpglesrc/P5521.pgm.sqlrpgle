**free

ctl-opt dftactgrp(*no);

dcl-pi P5521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3593.rpgleinc'
/copy 'qrpgleref/P4209.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'

dcl-ds theTable extname('T1341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1341 LIMIT 1;

theCharVar = 'Hello from P5521';
dsply theCharVar;
P3593();
P4209();
P1063();
return;