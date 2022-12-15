**free

ctl-opt dftactgrp(*no);

dcl-pi P3427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P2910.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'

dcl-ds theTable extname('T934') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T934 LIMIT 1;

theCharVar = 'Hello from P3427';
dsply theCharVar;
P714();
P2910();
P937();
return;