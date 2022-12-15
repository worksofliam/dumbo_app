**free

ctl-opt dftactgrp(*no);

dcl-pi P3214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P2361.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'

dcl-ds T1414 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1414 FROM T1414 LIMIT 1;

theCharVar = 'Hello from P3214';
dsply theCharVar;
P165();
P2361();
P1312();
return;