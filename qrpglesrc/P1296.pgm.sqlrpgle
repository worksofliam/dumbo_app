**free

ctl-opt dftactgrp(*no);

dcl-pi P1296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'

dcl-ds theTable extname('T657') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T657 LIMIT 1;

theCharVar = 'Hello from P1296';
dsply theCharVar;
P215();
P176();
P976();
return;