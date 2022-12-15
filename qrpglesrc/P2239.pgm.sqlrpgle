**free

ctl-opt dftactgrp(*no);

dcl-pi P2239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1488.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P1147.rpgleinc'

dcl-ds theTable extname('T370') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T370 LIMIT 1;

theCharVar = 'Hello from P2239';
dsply theCharVar;
P1488();
P160();
P1147();
return;