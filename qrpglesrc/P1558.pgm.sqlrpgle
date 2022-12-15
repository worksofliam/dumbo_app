**free

ctl-opt dftactgrp(*no);

dcl-pi P1558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P1558';
dsply theCharVar;
P767();
P637();
P685();
return;