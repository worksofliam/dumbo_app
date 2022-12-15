**free

ctl-opt dftactgrp(*no);

dcl-pi P1564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds theTable extname('T724') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T724 LIMIT 1;

theCharVar = 'Hello from P1564';
dsply theCharVar;
P437();
P378();
P153();
return;