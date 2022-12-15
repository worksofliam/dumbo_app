**free

ctl-opt dftactgrp(*no);

dcl-pi P176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds theTable extname('T490') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T490 LIMIT 1;

theCharVar = 'Hello from P176';
dsply theCharVar;
P130();
P164();
P156();
return;