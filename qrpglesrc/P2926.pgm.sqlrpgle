**free

ctl-opt dftactgrp(*no);

dcl-pi P2926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2209.rpgleinc'
/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P2023.rpgleinc'

dcl-ds T1348 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1348 FROM T1348 LIMIT 1;

theCharVar = 'Hello from P2926';
dsply theCharVar;
P2209();
P2295();
P2023();
return;