**free

ctl-opt dftactgrp(*no);

dcl-pi P430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P430';
dsply theCharVar;
P143();
P288();
P220();
return;