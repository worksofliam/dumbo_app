**free

ctl-opt dftactgrp(*no);

dcl-pi P350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T954') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T954 LIMIT 1;

theCharVar = 'Hello from P350';
dsply theCharVar;
P206();
P106();
P55();
return;