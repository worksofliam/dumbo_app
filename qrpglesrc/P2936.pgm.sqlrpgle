**free

ctl-opt dftactgrp(*no);

dcl-pi P2936;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P2085.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P2936';
dsply theCharVar;
P880();
P1919();
P2085();
return;