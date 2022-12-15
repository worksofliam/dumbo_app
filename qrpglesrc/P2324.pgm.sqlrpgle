**free

ctl-opt dftactgrp(*no);

dcl-pi P2324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2194.rpgleinc'
/copy 'qrpgleref/P1422.rpgleinc'
/copy 'qrpgleref/P2220.rpgleinc'

dcl-ds theTable extname('T467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T467 LIMIT 1;

theCharVar = 'Hello from P2324';
dsply theCharVar;
P2194();
P1422();
P2220();
return;