**free

ctl-opt dftactgrp(*no);

dcl-pi P3747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3043.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P3225.rpgleinc'

dcl-ds theTable extname('T1069') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1069 LIMIT 1;

theCharVar = 'Hello from P3747';
dsply theCharVar;
P3043();
P1172();
P3225();
return;