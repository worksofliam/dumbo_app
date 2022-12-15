**free

ctl-opt dftactgrp(*no);

dcl-pi P4157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3104.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P3854.rpgleinc'

dcl-ds theTable extname('T1471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1471 LIMIT 1;

theCharVar = 'Hello from P4157';
dsply theCharVar;
P3104();
P402();
P3854();
return;