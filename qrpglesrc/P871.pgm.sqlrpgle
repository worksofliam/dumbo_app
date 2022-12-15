**free

ctl-opt dftactgrp(*no);

dcl-pi P871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T1698') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1698 LIMIT 1;

theCharVar = 'Hello from P871';
dsply theCharVar;
P577();
P733();
P74();
return;