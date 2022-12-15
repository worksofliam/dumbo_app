**free

ctl-opt dftactgrp(*no);

dcl-pi P378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T913') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T913 LIMIT 1;

theCharVar = 'Hello from P378';
dsply theCharVar;
P160();
P175();
P38();
return;