**free

ctl-opt dftactgrp(*no);

dcl-pi P925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P603.rpgleinc'

dcl-ds theTable extname('T1280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1280 LIMIT 1;

theCharVar = 'Hello from P925';
dsply theCharVar;
P66();
P839();
P603();
return;