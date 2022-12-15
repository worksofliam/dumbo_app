**free

ctl-opt dftactgrp(*no);

dcl-pi P1748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1148.rpgleinc'
/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds theTable extname('T458') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T458 LIMIT 1;

theCharVar = 'Hello from P1748';
dsply theCharVar;
P1148();
P1506();
P507();
return;