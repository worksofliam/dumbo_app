**free

ctl-opt dftactgrp(*no);

dcl-pi P1815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P1777.rpgleinc'
/copy 'qrpgleref/P1410.rpgleinc'

dcl-ds T1061 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1061 FROM T1061 LIMIT 1;

theCharVar = 'Hello from P1815';
dsply theCharVar;
P794();
P1777();
P1410();
return;