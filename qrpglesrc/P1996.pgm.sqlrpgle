**free

ctl-opt dftactgrp(*no);

dcl-pi P1996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P959.rpgleinc'
/copy 'qrpgleref/P1377.rpgleinc'
/copy 'qrpgleref/P1968.rpgleinc'

dcl-ds theTable extname('T271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T271 LIMIT 1;

theCharVar = 'Hello from P1996';
dsply theCharVar;
P959();
P1377();
P1968();
return;