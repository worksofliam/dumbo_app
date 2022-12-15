**free

ctl-opt dftactgrp(*no);

dcl-pi P1057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P1057';
dsply theCharVar;
P694();
P599();
P824();
return;