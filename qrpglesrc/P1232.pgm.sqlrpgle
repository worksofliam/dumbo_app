**free

ctl-opt dftactgrp(*no);

dcl-pi P1232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P1232';
dsply theCharVar;
P856();
P351();
P429();
return;