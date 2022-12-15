**free

ctl-opt dftactgrp(*no);

dcl-pi P2077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P1685.rpgleinc'

dcl-ds T1783 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1783 FROM T1783 LIMIT 1;

theCharVar = 'Hello from P2077';
dsply theCharVar;
P566();
P794();
P1685();
return;