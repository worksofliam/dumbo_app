**free

ctl-opt dftactgrp(*no);

dcl-pi P4434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P3981.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds T1815 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1815 FROM T1815 LIMIT 1;

theCharVar = 'Hello from P4434';
dsply theCharVar;
P1484();
P3981();
P1059();
return;