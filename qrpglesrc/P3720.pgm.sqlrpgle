**free

ctl-opt dftactgrp(*no);

dcl-pi P3720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P3720';
dsply theCharVar;
P47();
P1418();
P454();
return;