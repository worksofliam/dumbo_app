**free

ctl-opt dftactgrp(*no);

dcl-pi P2214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P2214';
dsply theCharVar;
P888();
P773();
P1065();
return;