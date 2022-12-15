**free

ctl-opt dftactgrp(*no);

dcl-pi P3867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3097.rpgleinc'
/copy 'qrpgleref/P2771.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'

dcl-ds theTable extname('T562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T562 LIMIT 1;

theCharVar = 'Hello from P3867';
dsply theCharVar;
P3097();
P2771();
P916();
return;