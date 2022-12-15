**free

ctl-opt dftactgrp(*no);

dcl-pi P4143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2122.rpgleinc'
/copy 'qrpgleref/P3857.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'

dcl-ds theTable extname('T177') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T177 LIMIT 1;

theCharVar = 'Hello from P4143';
dsply theCharVar;
P2122();
P3857();
P838();
return;