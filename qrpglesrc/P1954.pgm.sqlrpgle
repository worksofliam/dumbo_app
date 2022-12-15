**free

ctl-opt dftactgrp(*no);

dcl-pi P1954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1716.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T856') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T856 LIMIT 1;

theCharVar = 'Hello from P1954';
dsply theCharVar;
P1716();
P317();
P43();
return;