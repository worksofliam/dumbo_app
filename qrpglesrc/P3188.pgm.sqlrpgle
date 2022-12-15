**free

ctl-opt dftactgrp(*no);

dcl-pi P3188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P979.rpgleinc'
/copy 'qrpgleref/P2353.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'

dcl-ds theTable extname('T1221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1221 LIMIT 1;

theCharVar = 'Hello from P3188';
dsply theCharVar;
P979();
P2353();
P2431();
return;