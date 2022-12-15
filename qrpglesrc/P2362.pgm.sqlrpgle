**free

ctl-opt dftactgrp(*no);

dcl-pi P2362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2001.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P2362';
dsply theCharVar;
P2001();
P246();
P1168();
return;