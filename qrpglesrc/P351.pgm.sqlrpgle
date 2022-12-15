**free

ctl-opt dftactgrp(*no);

dcl-pi P351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T291') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T291 LIMIT 1;

theCharVar = 'Hello from P351';
dsply theCharVar;
P217();
P287();
P39();
return;