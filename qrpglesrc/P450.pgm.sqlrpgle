**free

ctl-opt dftactgrp(*no);

dcl-pi P450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P450';
dsply theCharVar;
P345();
P400();
P14();
return;