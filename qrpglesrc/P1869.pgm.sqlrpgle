**free

ctl-opt dftactgrp(*no);

dcl-pi P1869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P1534.rpgleinc'

dcl-ds theTable extname('T935') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T935 LIMIT 1;

theCharVar = 'Hello from P1869';
dsply theCharVar;
P1051();
P1542();
P1534();
return;