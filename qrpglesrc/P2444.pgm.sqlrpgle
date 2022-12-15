**free

ctl-opt dftactgrp(*no);

dcl-pi P2444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P2181.rpgleinc'

dcl-ds theTable extname('T784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T784 LIMIT 1;

theCharVar = 'Hello from P2444';
dsply theCharVar;
P1397();
P1408();
P2181();
return;