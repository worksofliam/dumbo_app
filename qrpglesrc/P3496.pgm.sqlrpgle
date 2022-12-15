**free

ctl-opt dftactgrp(*no);

dcl-pi P3496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2494.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'

dcl-ds theTable extname('T980') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T980 LIMIT 1;

theCharVar = 'Hello from P3496';
dsply theCharVar;
P2494();
P1473();
P1357();
return;