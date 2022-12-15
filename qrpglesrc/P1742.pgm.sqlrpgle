**free

ctl-opt dftactgrp(*no);

dcl-pi P1742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T1075') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1075 LIMIT 1;

theCharVar = 'Hello from P1742';
dsply theCharVar;
P394();
P1566();
P315();
return;