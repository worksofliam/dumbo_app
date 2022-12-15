**free

ctl-opt dftactgrp(*no);

dcl-pi P1505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1163.rpgleinc'
/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds T116 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T116 FROM T116 LIMIT 1;

theCharVar = 'Hello from P1505';
dsply theCharVar;
P1163();
P915();
P152();
return;