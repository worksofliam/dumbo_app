**free

ctl-opt dftactgrp(*no);

dcl-pi P39;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T1175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1175 LIMIT 1;

theCharVar = 'Hello from P39';
dsply theCharVar;
P5();
P6();
P31();
return;