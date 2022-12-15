**free

ctl-opt dftactgrp(*no);

dcl-pi P212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P212';
dsply theCharVar;
P88();
P7();
P211();
return;