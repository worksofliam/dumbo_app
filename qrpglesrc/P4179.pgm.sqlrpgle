**free

ctl-opt dftactgrp(*no);

dcl-pi P4179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P3340.rpgleinc'
/copy 'qrpgleref/P1531.rpgleinc'

dcl-ds theTable extname('T1841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1841 LIMIT 1;

theCharVar = 'Hello from P4179';
dsply theCharVar;
P1264();
P3340();
P1531();
return;