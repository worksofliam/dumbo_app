**free

ctl-opt dftactgrp(*no);

dcl-pi P1843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P1843';
dsply theCharVar;
P714();
P1244();
P858();
return;