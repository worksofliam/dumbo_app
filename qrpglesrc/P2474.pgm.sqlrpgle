**free

ctl-opt dftactgrp(*no);

dcl-pi P2474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2109.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P1213.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P2474';
dsply theCharVar;
P2109();
P73();
P1213();
return;