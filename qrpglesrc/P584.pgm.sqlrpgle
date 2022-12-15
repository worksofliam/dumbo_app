**free

ctl-opt dftactgrp(*no);

dcl-pi P584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P584';
dsply theCharVar;
P454();
P387();
P503();
return;