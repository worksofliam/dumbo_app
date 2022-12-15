**free

ctl-opt dftactgrp(*no);

dcl-pi P4419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3704.rpgleinc'
/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds theTable extname('T907') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T907 LIMIT 1;

theCharVar = 'Hello from P4419';
dsply theCharVar;
P3704();
P1254();
P373();
return;