**free

ctl-opt dftactgrp(*no);

dcl-pi P173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'

dcl-ds theTable extname('T590') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T590 LIMIT 1;

theCharVar = 'Hello from P173';
dsply theCharVar;
P81();
P68();
P111();
return;