**free

ctl-opt dftactgrp(*no);

dcl-pi P2038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P1915.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'

dcl-ds theTable extname('T1702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1702 LIMIT 1;

theCharVar = 'Hello from P2038';
dsply theCharVar;
P218();
P1915();
P455();
return;