**free

ctl-opt dftactgrp(*no);

dcl-pi P75;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T847 LIMIT 1;

theCharVar = 'Hello from P75';
dsply theCharVar;
P67();
P66();
P52();
return;