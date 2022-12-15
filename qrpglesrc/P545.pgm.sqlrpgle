**free

ctl-opt dftactgrp(*no);

dcl-pi P545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T509 LIMIT 1;

theCharVar = 'Hello from P545';
dsply theCharVar;
P95();
P231();
P218();
return;