**free

ctl-opt dftactgrp(*no);

dcl-pi P1827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1032.rpgleinc'
/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'

dcl-ds theTable extname('T1089') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1089 LIMIT 1;

theCharVar = 'Hello from P1827';
dsply theCharVar;
P1032();
P879();
P318();
return;