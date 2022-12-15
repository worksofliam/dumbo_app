**free

ctl-opt dftactgrp(*no);

dcl-pi P661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'

dcl-ds theTable extname('T271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T271 LIMIT 1;

theCharVar = 'Hello from P661';
dsply theCharVar;
P202();
P443();
P610();
return;