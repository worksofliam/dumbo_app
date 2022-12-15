**free

ctl-opt dftactgrp(*no);

dcl-pi P35;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P35';
dsply theCharVar;
P16();
P7();
P4();
return;