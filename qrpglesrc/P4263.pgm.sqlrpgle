**free

ctl-opt dftactgrp(*no);

dcl-pi P4263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P2734.rpgleinc'

dcl-ds theTable extname('T529') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T529 LIMIT 1;

theCharVar = 'Hello from P4263';
dsply theCharVar;
P1121();
P538();
P2734();
return;