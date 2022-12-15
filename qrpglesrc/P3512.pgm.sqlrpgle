**free

ctl-opt dftactgrp(*no);

dcl-pi P3512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2885.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P2269.rpgleinc'

dcl-ds theTable extname('T1517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1517 LIMIT 1;

theCharVar = 'Hello from P3512';
dsply theCharVar;
P2885();
P934();
P2269();
return;