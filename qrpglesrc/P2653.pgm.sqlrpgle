**free

ctl-opt dftactgrp(*no);

dcl-pi P2653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1240.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'

dcl-ds T613 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T613 FROM T613 LIMIT 1;

theCharVar = 'Hello from P2653';
dsply theCharVar;
P1240();
P449();
P770();
return;