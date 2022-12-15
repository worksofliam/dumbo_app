**free

ctl-opt dftactgrp(*no);

dcl-pi P898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T1624') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1624 LIMIT 1;

theCharVar = 'Hello from P898';
dsply theCharVar;
P509();
P390();
P66();
return;