**free

ctl-opt dftactgrp(*no);

dcl-pi P3030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1105.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds T1003 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1003 FROM T1003 LIMIT 1;

theCharVar = 'Hello from P3030';
dsply theCharVar;
P1105();
P1949();
P722();
return;