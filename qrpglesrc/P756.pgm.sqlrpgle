**free

ctl-opt dftactgrp(*no);

dcl-pi P756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T590') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T590 LIMIT 1;

theCharVar = 'Hello from P756';
dsply theCharVar;
P220();
P326();
P34();
return;