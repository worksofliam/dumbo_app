**free

ctl-opt dftactgrp(*no);

dcl-pi P2384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P1962.rpgleinc'

dcl-ds theTable extname('T981') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T981 LIMIT 1;

theCharVar = 'Hello from P2384';
dsply theCharVar;
P2261();
P199();
P1962();
return;