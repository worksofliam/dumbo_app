**free

ctl-opt dftactgrp(*no);

dcl-pi P4594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3665.rpgleinc'
/copy 'qrpgleref/P4566.rpgleinc'
/copy 'qrpgleref/P1773.rpgleinc'

dcl-ds theTable extname('T1120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1120 LIMIT 1;

theCharVar = 'Hello from P4594';
dsply theCharVar;
P3665();
P4566();
P1773();
return;