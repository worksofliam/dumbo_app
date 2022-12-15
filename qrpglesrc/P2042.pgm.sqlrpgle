**free

ctl-opt dftactgrp(*no);

dcl-pi P2042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P1920.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T311') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T311 LIMIT 1;

theCharVar = 'Hello from P2042';
dsply theCharVar;
P689();
P1920();
P458();
return;