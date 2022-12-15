**free

ctl-opt dftactgrp(*no);

dcl-pi P1497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P1147.rpgleinc'

dcl-ds theTable extname('T1175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1175 LIMIT 1;

theCharVar = 'Hello from P1497';
dsply theCharVar;
P466();
P83();
P1147();
return;