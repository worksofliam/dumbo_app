**free

ctl-opt dftactgrp(*no);

dcl-pi P3243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P2304.rpgleinc'
/copy 'qrpgleref/P3058.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P3243';
dsply theCharVar;
P81();
P2304();
P3058();
return;