**free

ctl-opt dftactgrp(*no);

dcl-pi P1231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P1231';
dsply theCharVar;
P832();
P650();
P658();
return;