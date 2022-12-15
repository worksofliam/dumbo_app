**free

ctl-opt dftactgrp(*no);

dcl-pi P133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P133';
dsply theCharVar;
P20();
P68();
P28();
return;