**free

ctl-opt dftactgrp(*no);

dcl-pi P2132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P2132';
dsply theCharVar;
P650();
P916();
P644();
return;