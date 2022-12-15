**free

ctl-opt dftactgrp(*no);

dcl-pi P110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T1454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1454 LIMIT 1;

theCharVar = 'Hello from P110';
dsply theCharVar;
P89();
P61();
P68();
return;