**free

ctl-opt dftactgrp(*no);

dcl-pi P3038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2897.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds theTable extname('T1171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1171 LIMIT 1;

theCharVar = 'Hello from P3038';
dsply theCharVar;
P2897();
P532();
return;