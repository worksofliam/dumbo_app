**free

ctl-opt dftactgrp(*no);

dcl-pi P2650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P2472.rpgleinc'
/copy 'qrpgleref/P1869.rpgleinc'

dcl-ds theTable extname('T689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T689 LIMIT 1;

theCharVar = 'Hello from P2650';
dsply theCharVar;
P945();
P2472();
P1869();
return;