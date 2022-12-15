**free

ctl-opt dftactgrp(*no);

dcl-pi P3192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P2167.rpgleinc'

dcl-ds theTable extname('T863') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T863 LIMIT 1;

theCharVar = 'Hello from P3192';
dsply theCharVar;
P712();
P896();
P2167();
return;