**free

ctl-opt dftactgrp(*no);

dcl-pi P1828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1764.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'
/copy 'qrpgleref/P1682.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P1828';
dsply theCharVar;
P1764();
P1676();
P1682();
return;