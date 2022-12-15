**free

ctl-opt dftactgrp(*no);

dcl-pi P5206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P1815.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds theTable extname('T1365') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1365 LIMIT 1;

theCharVar = 'Hello from P5206';
dsply theCharVar;
P689();
P1815();
P602();
return;