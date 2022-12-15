**free

ctl-opt dftactgrp(*no);

dcl-pi P1477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1245.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P1258.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P1477';
dsply theCharVar;
P1245();
P926();
P1258();
return;