**free

ctl-opt dftactgrp(*no);

dcl-pi P1705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'

dcl-ds theTable extname('T1795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1795 LIMIT 1;

theCharVar = 'Hello from P1705';
dsply theCharVar;
P906();
P327();
P987();
return;