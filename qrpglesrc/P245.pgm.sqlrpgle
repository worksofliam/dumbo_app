**free

ctl-opt dftactgrp(*no);

dcl-pi P245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'

dcl-ds theTable extname('T383') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T383 LIMIT 1;

theCharVar = 'Hello from P245';
dsply theCharVar;
P144();
P90();
P210();
return;