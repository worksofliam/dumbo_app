**free

ctl-opt dftactgrp(*no);

dcl-pi P15;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T644 LIMIT 1;

theCharVar = 'Hello from P15';
dsply theCharVar;
P6();
P11();
return;