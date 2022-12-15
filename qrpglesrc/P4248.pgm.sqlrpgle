**free

ctl-opt dftactgrp(*no);

dcl-pi P4248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P3324.rpgleinc'
/copy 'qrpgleref/P4203.rpgleinc'

dcl-ds theTable extname('T1112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1112 LIMIT 1;

theCharVar = 'Hello from P4248';
dsply theCharVar;
P252();
P3324();
P4203();
return;