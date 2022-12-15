**free

ctl-opt dftactgrp(*no);

dcl-pi P1632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P1632';
dsply theCharVar;
P1533();
P1334();
P441();
return;