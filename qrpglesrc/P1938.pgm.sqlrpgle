**free

ctl-opt dftactgrp(*no);

dcl-pi P1938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P1746.rpgleinc'

dcl-ds theTable extname('T502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T502 LIMIT 1;

theCharVar = 'Hello from P1938';
dsply theCharVar;
P704();
P786();
P1746();
return;