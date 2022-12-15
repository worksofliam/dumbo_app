**free

ctl-opt dftactgrp(*no);

dcl-pi P149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P149';
dsply theCharVar;
P35();
P62();
P34();
return;