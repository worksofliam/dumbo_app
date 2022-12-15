**free

ctl-opt dftactgrp(*no);

dcl-pi P1073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P869.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P1073';
dsply theCharVar;
P770();
P844();
P869();
return;