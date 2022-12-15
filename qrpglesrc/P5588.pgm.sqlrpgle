**free

ctl-opt dftactgrp(*no);

dcl-pi P5588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P5588';
dsply theCharVar;
P671();
P1337();
P579();
return;