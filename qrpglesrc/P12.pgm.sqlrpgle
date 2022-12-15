**free

ctl-opt dftactgrp(*no);

dcl-pi P12;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T303') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T303 LIMIT 1;

theCharVar = 'Hello from P12';
dsply theCharVar;
P5();
P6();
P4();
return;