**free

ctl-opt dftactgrp(*no);

dcl-pi P2960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P2586.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds theTable extname('T733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T733 LIMIT 1;

theCharVar = 'Hello from P2960';
dsply theCharVar;
P1140();
P2586();
P281();
return;