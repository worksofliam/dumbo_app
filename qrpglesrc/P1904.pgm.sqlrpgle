**free

ctl-opt dftactgrp(*no);

dcl-pi P1904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'

dcl-ds theTable extname('T956') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T956 LIMIT 1;

theCharVar = 'Hello from P1904';
dsply theCharVar;
P184();
P907();
P853();
return;