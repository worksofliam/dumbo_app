**free

ctl-opt dftactgrp(*no);

dcl-pi P3743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3174.rpgleinc'
/copy 'qrpgleref/P3350.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds T1164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1164 FROM T1164 LIMIT 1;

theCharVar = 'Hello from P3743';
dsply theCharVar;
P3174();
P3350();
P512();
return;