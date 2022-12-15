**free

ctl-opt dftactgrp(*no);

dcl-pi P1368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1038.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds theTable extname('T273') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T273 LIMIT 1;

theCharVar = 'Hello from P1368';
dsply theCharVar;
P1038();
P124();
P360();
return;