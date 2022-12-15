**free

ctl-opt dftactgrp(*no);

dcl-pi P114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T411 LIMIT 1;

theCharVar = 'Hello from P114';
dsply theCharVar;
P31();
P55();
P71();
return;