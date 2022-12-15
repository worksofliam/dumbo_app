**free

ctl-opt dftactgrp(*no);

dcl-pi P279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P279';
dsply theCharVar;
P264();
P241();
P112();
return;