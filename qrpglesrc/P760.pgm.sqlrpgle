**free

ctl-opt dftactgrp(*no);

dcl-pi P760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'

dcl-ds theTable extname('T1292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1292 LIMIT 1;

theCharVar = 'Hello from P760';
dsply theCharVar;
P698();
P7();
P717();
return;