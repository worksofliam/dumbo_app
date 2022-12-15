**free

ctl-opt dftactgrp(*no);

dcl-pi P652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P652';
dsply theCharVar;
P421();
P448();
P534();
return;