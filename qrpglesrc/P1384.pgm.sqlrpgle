**free

ctl-opt dftactgrp(*no);

dcl-pi P1384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1301.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'

dcl-ds theTable extname('T524') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T524 LIMIT 1;

theCharVar = 'Hello from P1384';
dsply theCharVar;
P1301();
P385();
P1201();
return;