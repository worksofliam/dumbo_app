**free

ctl-opt dftactgrp(*no);

dcl-pi P5577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4006.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P5377.rpgleinc'

dcl-ds theTable extname('T960') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T960 LIMIT 1;

theCharVar = 'Hello from P5577';
dsply theCharVar;
P4006();
P1235();
P5377();
return;