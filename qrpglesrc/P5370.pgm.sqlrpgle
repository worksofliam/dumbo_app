**free

ctl-opt dftactgrp(*no);

dcl-pi P5370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3601.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P3591.rpgleinc'

dcl-ds theTable extname('T698') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T698 LIMIT 1;

theCharVar = 'Hello from P5370';
dsply theCharVar;
P3601();
P59();
P3591();
return;