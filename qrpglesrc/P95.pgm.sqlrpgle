**free

ctl-opt dftactgrp(*no);

dcl-pi P95;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds theTable extname('T1063') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1063 LIMIT 1;

theCharVar = 'Hello from P95';
dsply theCharVar;
P66();
P77();
P86();
return;