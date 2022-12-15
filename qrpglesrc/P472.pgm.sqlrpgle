**free

ctl-opt dftactgrp(*no);

dcl-pi P472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T1110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1110 LIMIT 1;

theCharVar = 'Hello from P472';
dsply theCharVar;
P265();
P245();
P88();
return;