**free

ctl-opt dftactgrp(*no);

dcl-pi P2007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1893.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'

dcl-ds T350 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T350 FROM T350 LIMIT 1;

theCharVar = 'Hello from P2007';
dsply theCharVar;
P1893();
P1756();
P633();
return;