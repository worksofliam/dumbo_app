**free

ctl-opt dftactgrp(*no);

dcl-pi P5113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3492.rpgleinc'
/copy 'qrpgleref/P1607.rpgleinc'
/copy 'qrpgleref/P3229.rpgleinc'

dcl-ds theTable extname('T1345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1345 LIMIT 1;

theCharVar = 'Hello from P5113';
dsply theCharVar;
P3492();
P1607();
P3229();
return;