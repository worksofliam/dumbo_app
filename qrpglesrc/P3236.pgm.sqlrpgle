**free

ctl-opt dftactgrp(*no);

dcl-pi P3236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P2324.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P3236';
dsply theCharVar;
P442();
P2324();
P687();
return;