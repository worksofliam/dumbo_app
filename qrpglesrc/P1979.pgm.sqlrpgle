**free

ctl-opt dftactgrp(*no);

dcl-pi P1979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1309.rpgleinc'
/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P1979';
dsply theCharVar;
P1309();
P1083();
P90();
return;