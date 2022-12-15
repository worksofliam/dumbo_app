**free

ctl-opt dftactgrp(*no);

dcl-pi P4459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P2455.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'

dcl-ds T603 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T603 FROM T603 LIMIT 1;

theCharVar = 'Hello from P4459';
dsply theCharVar;
P37();
P2455();
P1565();
return;