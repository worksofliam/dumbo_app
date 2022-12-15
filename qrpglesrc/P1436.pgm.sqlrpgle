**free

ctl-opt dftactgrp(*no);

dcl-pi P1436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T253') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T253 LIMIT 1;

theCharVar = 'Hello from P1436';
dsply theCharVar;
P215();
P716();
P136();
return;