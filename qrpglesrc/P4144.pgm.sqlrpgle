**free

ctl-opt dftactgrp(*no);

dcl-pi P4144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P4069.rpgleinc'

dcl-ds theTable extname('T1835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1835 LIMIT 1;

theCharVar = 'Hello from P4144';
dsply theCharVar;
P263();
P1019();
P4069();
return;