**free

ctl-opt dftactgrp(*no);

dcl-pi P1262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T914') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T914 LIMIT 1;

theCharVar = 'Hello from P1262';
dsply theCharVar;
P1242();
P625();
P113();
return;