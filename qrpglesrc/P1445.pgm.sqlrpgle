**free

ctl-opt dftactgrp(*no);

dcl-pi P1445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds T1549 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1549 FROM T1549 LIMIT 1;

theCharVar = 'Hello from P1445';
dsply theCharVar;
P82();
P1139();
P425();
return;