**free

ctl-opt dftactgrp(*no);

dcl-pi P31;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T755 LIMIT 1;

theCharVar = 'Hello from P31';
dsply theCharVar;
P6();
P15();
P16();
return;