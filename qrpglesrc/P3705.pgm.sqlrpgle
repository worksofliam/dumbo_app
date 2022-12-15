**free

ctl-opt dftactgrp(*no);

dcl-pi P3705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3225.rpgleinc'
/copy 'qrpgleref/P1680.rpgleinc'
/copy 'qrpgleref/P1012.rpgleinc'

dcl-ds theTable extname('T1051') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1051 LIMIT 1;

theCharVar = 'Hello from P3705';
dsply theCharVar;
P3225();
P1680();
P1012();
return;