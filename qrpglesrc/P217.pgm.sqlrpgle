**free

ctl-opt dftactgrp(*no);

dcl-pi P217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T474 LIMIT 1;

theCharVar = 'Hello from P217';
dsply theCharVar;
P44();
P168();
P45();
return;