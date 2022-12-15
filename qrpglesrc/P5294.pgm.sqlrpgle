**free

ctl-opt dftactgrp(*no);

dcl-pi P5294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5173.rpgleinc'
/copy 'qrpgleref/P4112.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'

dcl-ds theTable extname('T506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T506 LIMIT 1;

theCharVar = 'Hello from P5294';
dsply theCharVar;
P5173();
P4112();
P1119();
return;