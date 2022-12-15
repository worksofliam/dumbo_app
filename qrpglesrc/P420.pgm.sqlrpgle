**free

ctl-opt dftactgrp(*no);

dcl-pi P420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T983') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T983 LIMIT 1;

theCharVar = 'Hello from P420';
dsply theCharVar;
P129();
P211();
P83();
return;