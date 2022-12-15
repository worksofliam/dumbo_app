**free

ctl-opt dftactgrp(*no);

dcl-pi P2233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2132.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'
/copy 'qrpgleref/P1594.rpgleinc'

dcl-ds theTable extname('T791') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T791 LIMIT 1;

theCharVar = 'Hello from P2233';
dsply theCharVar;
P2132();
P1923();
P1594();
return;