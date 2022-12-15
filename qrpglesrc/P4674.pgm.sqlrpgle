**free

ctl-opt dftactgrp(*no);

dcl-pi P4674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2899.rpgleinc'
/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P3596.rpgleinc'

dcl-ds theTable extname('T1474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1474 LIMIT 1;

theCharVar = 'Hello from P4674';
dsply theCharVar;
P2899();
P791();
P3596();
return;