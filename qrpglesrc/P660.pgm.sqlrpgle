**free

ctl-opt dftactgrp(*no);

dcl-pi P660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds theTable extname('T208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T208 LIMIT 1;

theCharVar = 'Hello from P660';
dsply theCharVar;
P88();
P483();
P435();
return;