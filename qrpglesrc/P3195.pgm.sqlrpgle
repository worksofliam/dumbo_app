**free

ctl-opt dftactgrp(*no);

dcl-pi P3195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P2979.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P3195';
dsply theCharVar;
P699();
P2979();
P1484();
return;