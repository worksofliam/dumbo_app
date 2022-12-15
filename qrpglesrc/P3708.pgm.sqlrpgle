**free

ctl-opt dftactgrp(*no);

dcl-pi P3708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds theTable extname('T542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T542 LIMIT 1;

theCharVar = 'Hello from P3708';
dsply theCharVar;
P452();
P226();
P437();
return;