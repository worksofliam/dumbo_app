**free

ctl-opt dftactgrp(*no);

dcl-pi P2085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P1865.rpgleinc'

dcl-ds theTable extname('T448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T448 LIMIT 1;

theCharVar = 'Hello from P2085';
dsply theCharVar;
P303();
P1003();
P1865();
return;