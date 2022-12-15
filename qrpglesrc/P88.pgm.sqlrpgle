**free

ctl-opt dftactgrp(*no);

dcl-pi P88;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T1408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1408 LIMIT 1;

theCharVar = 'Hello from P88';
dsply theCharVar;
P77();
P57();
P3();
return;