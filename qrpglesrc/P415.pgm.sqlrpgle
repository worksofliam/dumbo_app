**free

ctl-opt dftactgrp(*no);

dcl-pi P415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds theTable extname('T733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T733 LIMIT 1;

theCharVar = 'Hello from P415';
dsply theCharVar;
P390();
P385();
P394();
return;