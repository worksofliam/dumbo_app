**free

ctl-opt dftactgrp(*no);

dcl-pi P692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'

dcl-ds theTable extname('T123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T123 LIMIT 1;

theCharVar = 'Hello from P692';
dsply theCharVar;
P633();
P569();
P670();
return;