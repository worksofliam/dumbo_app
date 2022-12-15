**free

ctl-opt dftactgrp(*no);

dcl-pi P364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P364';
dsply theCharVar;
P118();
P357();
P117();
return;