**free

ctl-opt dftactgrp(*no);

dcl-pi P5446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3121.rpgleinc'
/copy 'qrpgleref/P3587.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T1442') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1442 LIMIT 1;

theCharVar = 'Hello from P5446';
dsply theCharVar;
P3121();
P3587();
P236();
return;