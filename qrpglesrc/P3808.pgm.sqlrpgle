**free

ctl-opt dftactgrp(*no);

dcl-pi P3808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2449.rpgleinc'
/copy 'qrpgleref/P2911.rpgleinc'
/copy 'qrpgleref/P3713.rpgleinc'

dcl-ds theTable extname('T671') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T671 LIMIT 1;

theCharVar = 'Hello from P3808';
dsply theCharVar;
P2449();
P2911();
P3713();
return;