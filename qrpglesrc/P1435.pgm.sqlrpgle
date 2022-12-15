**free

ctl-opt dftactgrp(*no);

dcl-pi P1435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P1263.rpgleinc'

dcl-ds T1188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1188 FROM T1188 LIMIT 1;

theCharVar = 'Hello from P1435';
dsply theCharVar;
P963();
P367();
P1263();
return;