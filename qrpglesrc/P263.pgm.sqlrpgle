**free

ctl-opt dftactgrp(*no);

dcl-pi P263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P263';
dsply theCharVar;
P202();
P144();
P113();
return;