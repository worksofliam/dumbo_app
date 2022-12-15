**free

ctl-opt dftactgrp(*no);

dcl-pi P39;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P39';
dsply theCharVar;
P35();
P12();
P10();
return;