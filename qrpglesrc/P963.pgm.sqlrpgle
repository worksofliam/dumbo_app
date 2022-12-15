**free

ctl-opt dftactgrp(*no);

dcl-pi P963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds theTable extname('T1344') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1344 LIMIT 1;

theCharVar = 'Hello from P963';
dsply theCharVar;
P461();
P858();
P350();
return;