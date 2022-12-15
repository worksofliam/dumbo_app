**free

ctl-opt dftactgrp(*no);

dcl-pi P2339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P1444.rpgleinc'
/copy 'qrpgleref/P2081.rpgleinc'

dcl-ds theTable extname('T1288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1288 LIMIT 1;

theCharVar = 'Hello from P2339';
dsply theCharVar;
P601();
P1444();
P2081();
return;