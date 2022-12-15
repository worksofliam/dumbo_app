**free

ctl-opt dftactgrp(*no);

dcl-pi P504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T1152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1152 LIMIT 1;

theCharVar = 'Hello from P504';
dsply theCharVar;
P19();
P325();
P277();
return;