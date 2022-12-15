**free

ctl-opt dftactgrp(*no);

dcl-pi P675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T1844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1844 LIMIT 1;

theCharVar = 'Hello from P675';
dsply theCharVar;
P552();
P328();
P120();
return;