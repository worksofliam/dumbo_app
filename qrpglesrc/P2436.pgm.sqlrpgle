**free

ctl-opt dftactgrp(*no);

dcl-pi P2436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1716.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P2436';
dsply theCharVar;
P1185();
P1716();
P1505();
return;