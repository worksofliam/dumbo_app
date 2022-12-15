**free

ctl-opt dftactgrp(*no);

dcl-pi P1082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds theTable extname('T863') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T863 LIMIT 1;

theCharVar = 'Hello from P1082';
dsply theCharVar;
P51();
P809();
P591();
return;